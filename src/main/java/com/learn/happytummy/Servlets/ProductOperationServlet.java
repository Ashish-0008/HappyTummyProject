package com.learn.happytummy.Servlets;

import com.learn.happytummy.dao.categoryDao;
import com.learn.happytummy.dao.productDao;
import com.learn.happytummy.dao.restaurantDao;
import com.learn.happytummy.entities.Category;
import com.learn.happytummy.entities.Product;
import com.learn.happytummy.entities.Restaurant;

import com.learn.happytummy.helper.FactoryProvider;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String Op = request.getParameter("operation");

            if (Op.trim().equals("addrestaurant")) {

                String resTitle = request.getParameter("resTitle");
                String resDesc = request.getParameter("resDescription");

                Restaurant r = new Restaurant();
                r.setRestaurantTitle(resTitle);
                r.setRestaurantDescription(resDesc);

                restaurantDao RestaurantDao = new restaurantDao(FactoryProvider.getFactory());
                int resId = RestaurantDao.saveRestaurant(r);

                HttpSession httpsession = request.getSession();
                httpsession.setAttribute("message", "Restaurant Added Successfully");
                response.sendRedirect("Admin_home.jsp");
                return;
                
            } else if (Op.trim().equals("addcategory")) {

                String title = request.getParameter("catTitle");
                String desc = request.getParameter("catDescription");
                int restaurantid = Integer.parseInt(request.getParameter("restaurantID"));

                Category c = new Category();

                c.setCategoryTitle(title);
                c.setCategoryDescription(desc);
//                get restaurant id

                restaurantDao RestaurantDao = new restaurantDao(FactoryProvider.getFactory());
                Restaurant restaurant = RestaurantDao.getRestaurantById(restaurantid);
                c.setRestaurant(restaurant);

                categoryDao Cdao = new categoryDao(FactoryProvider.getFactory());
               Cdao.saveCategory(c);

                HttpSession httpsession2 = request.getSession();
                httpsession2.setAttribute("message", "Category Added Successfully");
                response.sendRedirect("Admin_home.jsp");
                return ;

            } else 
                if (Op.trim().equals("addproduct"))
                {

                String protitle = request.getParameter("proTitle");
                int proprice = Integer.parseInt(request.getParameter("proPrice"));
                int catId = Integer.parseInt(request.getParameter("catId"));
                int resId =Integer.parseInt(request.getParameter("restaurantID"));
                String prodesc = request.getParameter("proDescription");
                Part part = request.getPart("proImage");

                Product p = new Product();
                p.setpName(protitle);
                p.setpDesc(prodesc);
                p.setpPrice(proprice);

                p.setpPhoto(part.getSubmittedFileName());

                //  get category by id
                categoryDao cdao = new categoryDao(FactoryProvider.getFactory());
                Category category = cdao.getCategoryById(catId);
                p.setCategory(category);
                
             restaurantDao RestaurantDao = new restaurantDao(FactoryProvider.getFactory());
                Restaurant restaurant = RestaurantDao.getRestaurantById(resId);
                p.setRestaurant(restaurant);

                productDao pdao = new productDao(FactoryProvider.getFactory());
                pdao.saveProduct(p);

                // photo upload
                String path = request.getRealPath("images") + File.separator + part.getSubmittedFileName();
                System.out.println(path);

// uploading code
                FileOutputStream fos = new FileOutputStream(path);
                InputStream is = part.getInputStream();
//        reading data

                byte[] data = new byte[is.available()];

                is.read(data);

                fos.write(data);
                fos.close();

                HttpSession httpsession = request.getSession();
                httpsession.setAttribute("message", "Product added Successfully");
                response.sendRedirect("Admin_home.jsp");
                return;

            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
