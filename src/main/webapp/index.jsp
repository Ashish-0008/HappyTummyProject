<%@page import="com.learn.happytummy.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">



  <title>Project</title>


</head>

<body>
    
    <%
        out.println(FactoryProvider.getFactory());
        out.println(FactoryProvider.getFactory());
        out.println(FactoryProvider.getFactory());
    %>
    

</body>

</html>