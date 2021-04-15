
<%@page import="com.learn.happytummy.entities.Restaurant"%>
<%@page import="com.learn.happytummy.dao.restaurantDao"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.happytummy.entities.Category"%>
<%@page import="com.learn.happytummy.dao.categoryDao"%>
<%@page import="com.learn.happytummy.helper.FactoryProvider"%>
<%@page import="com.learn.happytummy.entities.User"%>

<%
    User user = (User) session.getAttribute("current-user");
    if (user == null) {
        session.setAttribute("message", "You are not logged in!!");
        response.sendRedirect("login_page.jsp");
        return;
    } else if (user.getUserEmail().equals("admin123@gmail.com")) {
          %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="common_components/common_css_js.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <title>Admin home</title>
    </head>
    <body>


        <nav class="navbar navbar-expand-lg navbar-dark bg-light">
            <div class="container-fluid">

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse d-flex" id="navbarSupportedContent">
                    <img src="images/fast-food-outline.svg " alt="" width="30" height="24" class="d-inline-block align-top">
                    Happy Tummy
                </div>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item dropdown mx-1 ">
                        <a class="nav-link dropdown-toggle active text-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            DashBoard
                            <img src="images/menu (1).svg" alt="">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Forget Password </a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#"> </a></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>

        <section>
            
            <div class="container">

                <div class="container mt-3">
                    <%@include file="common_components/msg.jsp" %>
                </div>
                <div class="container">

                    <div class="row mt-3">
                        <div class="col-md-4">


                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-center "> <h4 class="text-center ">Users</h4></p>
                                </div>
                            </div>

                        </div>


                        <div class="col-md-4">

                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-center"><h4 class="text-center ">Restaurants</h4></p>
                                </div>
                            </div>
                        </div>            



                        <div class="col-md-4">

                            <div class="card" style="width: 18rem;">
                                <img src="..." class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-center"><h4 class="text-center ">Delivery Boy</h4></p>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>

            <div class="container">
                <div class="row mt-5">
                  
                    
                     
                        <div class="col-md-4">
                            <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#exampleModal1">


                                <div class="card" style="width: 18rem;">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-center"><h4 class="text-center ">Add Restaurant</h4></p>
                                    </div>
                            </button>      
                        </div>
                    
                    
                        
                    
                        <div class="col-md-4">
                            <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#exampleModal">


                                <div class="card" style="width: 18rem;">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-center"><h4 class="text-center ">Add Category</h4></p>
                                    </div>
                            </button>      
                        </div>
                   
                                
                                
                                    <div class="col-md-4">
                            <button type="button" class="btn " data-bs-toggle="modal" data-bs-target="#exampleModal2">

                                <div class="card" style="width: 18rem;">
                                    <img src="..." class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <p class="card-text text-center"><h4 class="text-center ">Add Product</h4></p>
                                    </div>
                                </div>
                            </button>      
                         </div> 
                    
                </div>
            </div>

        </section>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

        <!<!-- add category modal -->

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <form action="ProductOperationServlet" method="POST">


                            
                            
                            <input type="hidden" name="operation" value="addcategory">
                            <div class="form-group  mt-3">

                                <input type="text" class="form-control" required="" name="catTitle"  placeholder="Category Title"> 
                            </div>

                            <div class="form-group mt-3">

                                <textarea class="form-control" style="height: 120px" placeholder="Category Description" name="catDescription" ></textarea>
                            </div>

  <!<!-- add category -->

                             <%  restaurantDao Restaurantdao = new restaurantDao(FactoryProvider.getFactory());
                                List<Restaurant> list1 = Restaurantdao.getRestaurants();
                            %>
                            <label class="mx-2 mt-3 text-bolder"> Select Restaurant </label>

                            <select name="restaurantID" class="form-control mt-1" id="" required=""  >

                                <%
                                    for (Restaurant c : list1) {
                                %>

                                <option value="<%= c.getRestaurantId()%>"> <%= c.getRestaurantTitle()%> </option>

                                <%} %>

                            </select>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add Category</button>


                    </div>
                    </form>
                </div>
            </div>
        </div>
        
                <!<!-- add Restaurant modal -->

        
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Restaurant</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <form action="ProductOperationServlet" method="POST">

                            <input type="hidden" name="operation" value="addrestaurant">
                            <div class="form-group">

                                <input type="text" class="form-control" required="" name="resTitle"  placeholder="Restaurant Title"> 
                            </div>

                            <div class="form-group mt-3">

                                <textarea class="form-control" style="height: 120px" placeholder="Restaurant Speciality" name="resDescription" ></textarea>
                            </div>



                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add Restaurant</button>


                    </div>
                    </form>
                </div>
            </div>
        </div>

        <!<!-- add  product modal -->
        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <form action="ProductOperationServlet" method="POST" enctype="multipart/form-data">
                            <input type="hidden" name="operation" value="addproduct">

                            
                            
                            <div class="form-group">

                                <input type="text" class="form-control" required="" name="proTitle"  placeholder="Product Title"> 
                            </div>

                            <div class="form-group mt-3">

                                <input type="number" class="form-control" required="" name="proPrice"  placeholder="Product Price"> 
                            </div>

                            <div class="form-group mt-3">
                                <label class="mx-2 text-bolder">Select Image </label>

                                <input type="file" class="form-control mt-1" required="" name="proImage"  placeholder="Product Image"> 
                            </div>
                            
                            
                             <%  restaurantDao Restaurantdao2 = new restaurantDao(FactoryProvider.getFactory());
                                List<Restaurant> list2 = Restaurantdao2.getRestaurants();
                            %>
                            <label class="mx-2 mt-3 text-bolder"> Select Restaurant </label>

                            <select name="restaurantID" class="form-control mt-1" id="" required=""  >

                                <%
                                    for (Restaurant c : list1) {
                                %>

                                <option value="<%= c.getRestaurantId()%>"> <%= c.getRestaurantTitle()%> </option>

                                <%} %>

                            </select>

                            <!<!-- product category -->

                            <%  categoryDao cdao = new categoryDao(FactoryProvider.getFactory());
                                List<Category> list = cdao.getCategorys();
                            %>
                            <label class="mx-2 mt-3 text-bolder"> Select Category </label>

                            <select name="catId" class="form-control mt-1" id="" required=""  >

                                <%
                                    for (Category c : list) {
                                %>

                                <option value="<%= c.getCategoryId()%>"> <%= c.getCategoryTitle()%> </option>

                                <%} %>

                            </select>
                    </div>

                    <div class="form-group mt-3">

                        <textarea class="form-control" style="height: 120px" placeholder="Product Description" name="proDescription" required=""></textarea>
                    </div>




                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add Product</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

<%        } else {

        session.setAttribute("message", "You are not Admin!!");
        response.sendRedirect("login_page.jsp");
    }
%>

