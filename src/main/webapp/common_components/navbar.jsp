<%@page import="com.learn.happytummy.entities.User"%>
<% 
    User user1=(User) session.getAttribute("current-user");
    
    
%>
  <nav id="navbar" class="navbar navbar-expand-md fixed-top navbar-light ">
    <!-- <nav class="navbar smart-scroll navbar-expand-lg navbar-light "> -->
    <div class="container-fluid">
      <img src="/images/fast-food-outline.svg " alt="" width="30" height="24" class="d-inline-block align-top">

      <a class="navbar-brand  text-light fw-bolder fs-5 badge" href="#">Happy Tummy</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active text-light fw-bolder" aria-current="page" href="HomePage.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-light fw-bolder" href="#">Order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active text-light fw-bolder" href="contact us.jsp">Contact us</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle active fw-bolder text-light" href="#" id="navbarDropdown" role="button"
              data-bs-toggle="dropdown" aria-expanded="false">
              Subscription
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#">MemberShip</a></li>
              <li><a class="dropdown-item" href="#">Another</a></li>

            </ul>
          </li>

        </ul>
          <% 
          if(user1==null){
              %>
              <a class="nav-link active text-light fw-bolder" href="login_page.jsp"> Log In</a>
<%
    
          }else{
          %>
          
       
        <a class="nav-link text-light fw-bolder" href="#"><%=user1.getUsername()%></a>
        <a class="nav-link active text-light fw-bolder" href="LogoutServlet">Log Out</a>

<%}%>

        </div>
  </nav>

