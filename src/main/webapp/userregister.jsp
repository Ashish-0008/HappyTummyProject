<%-- 
    Document   : userregister
    Created on : Mar 18, 2021, 7:42:03 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");



  if(request.getParameter("email")!=null){
    String email_id=request.getParameter("email");
    }
try {
    Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection(  "jdbc:mysql://localhost:3306/test", "root", "1234");
 PreparedStatement pstmt=null;
 pstmt=con.prepareStatement("select * from userregister where email=?");
 pstmt.setString(1, email);
 ResultSet rs=pstmt.executeQuery();
 if(rs.next()){
  out.println("already exist");
 }
 else{ 
     PreparedStatement ps=con.prepareStatement("insert into userregister(email,password)values(?,?);");
ps.setString(1, email);
ps.setString(2, password);

int x =ps.executeUpdate();
if(x>0){out.print("s");
}
else{out.print("f");
}}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}



%>
