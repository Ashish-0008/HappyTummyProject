<%@page import="com.learn.happytummy.entities.User"%>
<%
    

 User user = (User) session.getAttribute("current-user");
    if (user == null) {
        session.setAttribute("message", "You are not logged in!!");
        response.sendRedirect("../login_page.jsp");
        return;
    } else {
        
    
   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../common_components/common_css_js.jsp"  %>
            <%@include file="../common_components/common css for restaurants.jsp" %>

                <%@include file="../common_components/common_modals.jsp" %> 
        <title>CheckOut</title>
 
      
    </head>
    <body>
         <nav id="navbar" class="navbar navbar-expand-md fixed-top navbar-dark bg-dark ">
      <div class="container my-0 mb-0">
        <img  src="../images/fast-food-outline.svg" alt="" width="40" height="30" class="d-inline-block align-top">

        <a class="navbar-brand  text-light fw-bolder fs-5 badge" href="#">Happy Tummy</a>

        <div class="container-fluid justify-content-center">
          <form class="d-flex  " id="navBarSearchForm">
            <input class="form-control me-2 mx-5" width="5px" type="search" placeholder="Search for Cuisine or a dish"
              aria-label="Search">
            <button class="btn bg-light mx-3 " type="submit">Search</button>
          </form>
        </div>

        <a class="navbar-brand  text-light fw-bolder fs-5 badge" type="button" data-bs-toggle="modal"
          data-bs-target="#cart">
          <i class="fa fa-cart-plus" style="font-size: 40px;"></i><span class="cart-items">(0)</span></a>

      </div>
             
    </nav>
        <br>
        <br>
        <br>
        
      <section>
    <div class="container mx-2 ">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a class="text-decoration-none link-dark" href="../HomePage.jsp">Home</a></li>
            <li class="breadcrumb-item"><a class="text-decoration-none link-dark" href="../restaurants.jsp">Restaurants</a>
            <li class="breadcrumb-item"><a class="text-decoration-none link-dark" href="../restaurants/Joyo Cafe.jsp">City Cafe</a>
          </li>
          <li class="breadcrumb-item active" aria-current="page">CheckOut</li>
        </ol>
      </nav>
    </div>
  </section>
      
        <div class="container">
            
            <div class="row mt-5 ">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class=" text-center">Your Selected Item</h3>
                            <div class="cart-body">
                            
                            
                            
                            </div>
                            
                        </div>
                        </div>
                </div>
                        <div class="col-md-6">
                            <!<!-- form  -->
                            
                               <div class="card">
                        
                            <h3 class=" text-center">Enter Details Delivery</h3>
                            <form action="#">
                                 <div class="mb-1">
    <label for="exampleInputText" class="form-label">Name</label>
    <input value="<%= user.getUsername() %>" type="Text" class="form-control" id="exampleInputPassword1">
  </div>
          
                    
    
      <div class="mb-3 mt-3">
    <label for="exampleInputNumber" class="form-label">Mobile Number</label>
    <input value="<%= user.getUserPhone()%>" type="number" class="form-control" id="exampleInputPassword1">
  </div>
          <div class="input-group">
  <span class="input-group-text">Address</span>
  <textarea value="<%= user.getUserAddress() %>" class="form-control" aria-label="With textarea"></textarea>
</div> 
     
<div class="d-grid gap-2 col-6 mx-auto mt-3"> 
    <button
       class="btn btn-success prcd-bt"> Proceed to Pay   </button> </form> </div>  
                                
                            
                        
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    <section>
    <div id="toast">

     
    </div>
  </section>

        <script src="jsCart.js"></script>
        
    </body>
</html>
<%
    }
    %>
