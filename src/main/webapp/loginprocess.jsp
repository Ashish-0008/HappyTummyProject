

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");    
    String password= request.getParameter("password");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "1234");
    PreparedStatement pst = con.prepareStatement("select email,password from userregister where email=? and password=?");
   
            pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())     {      
           out.println("Valid login credentials");      
        response.sendRedirect("succes.jsp");
        }
        
        else
           out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
    

