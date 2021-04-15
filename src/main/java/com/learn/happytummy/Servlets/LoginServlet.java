
package com.learn.happytummy.Servlets;

import com.learn.happytummy.dao.UserDao;
import com.learn.happytummy.entities.User;
import com.learn.happytummy.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
            try {
              String userEmail=  request.getParameter("email");
              String userPassword=  request.getParameter("pass");
                
              
//              validations


//   autenticating user

UserDao userdao= new UserDao(FactoryProvider.getFactory());
  User user= userdao.getUserbyEmailandPassword(userEmail, userPassword);
//           System.out.println(user);
HttpSession httpsession =request.getSession();



                if (user==null) {
                  
                 httpsession.setAttribute("message","Invalid details");
                response.sendRedirect("login_page.jsp");
                return;
                } else {
                    
                   
               
                    httpsession.setAttribute("current-user",user);
                    if (user.getUserEmail().equals("admin123@gmail.com")) 
                    {
                        out.println("ur admin");
                            response.sendRedirect("Admin_home.jsp");
                    }
                    else if(user.getUserEmail().equals("citycafe123@gmail.com")) {
                        out.println("ur restaurant");
//                       redirect to restaurant owner page 


                    }
                    else if(user.getUserEmail().equals("delivery123@gmail.com")) {
                         out.println("ur delivery partner");
//                       redirect to restaurant delivery boy page 


                    }
                    else{
                        response.sendRedirect("HomePage.jsp");
                    }
                
                }

            } catch (Exception e) {
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
