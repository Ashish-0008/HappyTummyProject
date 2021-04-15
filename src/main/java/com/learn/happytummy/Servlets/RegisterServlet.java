package com.learn.happytummy.Servlets;
import com.learn.happytummy.dao.UserDao2;
import com.learn.happytummy.entities.User;
import com.learn.happytummy.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;


public class RegisterServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
             
               String userName = request.getParameter("user_name");
               String userEmail = request.getParameter("user_email");
               String userPhone = request.getParameter("user_phone");
               String userPass = request.getParameter("user_pass");
               String userCPass = request.getParameter("user_cpass");
               String userAddress = request.getParameter("user_address");
          
//            validation


// checking if account exixts with same email


                try {
                    UserDao2 userdao= new UserDao2(FactoryProvider.getFactory());
                    
  User user2= userdao.getUserbyEmailandPassword(userEmail);
//           System.out.println(user);
HttpSession httpsession =request.getSession();



                if (user2==null) {
                  
                        User user=   new User(userName, userEmail, userPass, userCPass, userPhone,userAddress);
  
             Session hibernateSession=FactoryProvider.getFactory().openSession();
             
               
             Transaction tx=  hibernateSession.beginTransaction();
             
                int userId =(int) hibernateSession.save(user);
                tx.commit();
                hibernateSession.close();
                out.println("success");
                out.println(userId);
                
                    
                    
                 httpsession.setAttribute("message","Registration successfull. Login with your Email and Password");
                  response.sendRedirect("login_page.jsp");
               
                return;
                } else {
                    
                        
                 httpsession.setAttribute("message","Account Already Exists. Try Logging!!");
                  response.sendRedirect("login_page.jsp");
                }

                } catch (Exception e) {
                }

//             creating object to store data            

         
             
            } catch (Exception e) {
                e.printStackTrace();
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
