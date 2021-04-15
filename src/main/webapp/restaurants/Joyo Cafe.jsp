<%-- 
    Document   : citycafe.jsp
    Created on : Mar 28, 2021, 11:57:00 AM
    Author     : Aayush
--%>

<%@page import="com.learn.happytummy.entities.Category"%>
<%@page import="com.learn.happytummy.dao.categoryDao"%>
<%@page import="com.learn.happytummy.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.happytummy.helper.FactoryProvider"%>
<%@page import="com.learn.happytummy.dao.productDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    


    <%
        productDao dao = new productDao(FactoryProvider.getFactory());
        List<Product> list = dao.getAllProducts();

        categoryDao Cdao = new categoryDao(FactoryProvider.getFactory());
        List<Category> clist = Cdao.getCategorys();
    %>
    <title>Joyo Cafe</title>



    <body>
  
        <%@include file="../common_components/common_css_js.jsp" %>
    <%@include file="../common_components/common_modals.jsp" %>
    <%@include file="../common_components/common css for restaurants.jsp" %>

        
        <section class="navbar">
            <%@include file="../common_components/common navbar for restaurants.jsp" %>

        </section>



        <section>
            <div class="container mx-2 ">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb ">
                        <li class="breadcrumb-item"><a class="text-decoration-none link-dark" href="../HomePage.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a class="text-decoration-none link-dark" href="../restaurants.jsp">Restaurants</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Joyo Cafe</li>
                    </ol>
                </nav>
            </div>
        </section>


        <section class="images ">
            <div class="container mx-0">
                <div class="row gx-3">

                    <div class="col-8">
                        <img src="../images/citycafe_bigg.jpg" class="img-fluid" alt="...">
                    </div>
                    <div class="col-4 ">
                        <img src="../images/citycafe_small1 (2).jpg" class="img-fluid" alt="...">
                        <pre></pre>
                        <img src="../images/citycafe_small1.jpg" class="img-fluid" alt="...">
                    </div>
                </div>
            </div>
        </section>

        <section>

            <h1 class="display-4 mx-4">Joyo Cafe</h1>
            <h5 class="mx-4 mt-3"> Quick Bites - Bakery, FastFood</h5>
            <h2 class="mt-3 mx-4">Order Online</h2>
        </section>




        <div class="container-fluid">
            <div class="row">
                <!-- left -->
                <div class="col-3" style="   position: static; top: auto;">

                    <div class="vid">


                        <div class="list-group" >

                            <a href="#" class= "list-group-item list-group-item-action active" aria-current="true">
                                All Product

                            </a>



                            <% for (Category category : clist) {


                            %>
                            <a href="#" class="list-group-item list-group-item-action"> <%= category.getCategoryTitle()%></a>

                            <%

                                }
                            %>
                        </div>

                    </div>

                </div>

                <div class="col-9" style="overflow-y: scroll; height: calc(100vh - 250px); position: static; top: auto; ">

                    <div class="vid">

                        <% for (Product product : list) {
//            %>

                     <div class="row">
                    <div class="col-2">
                      <img src="<%=product.getpPhoto() %>" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class=""><%=product.getpName()%></h1>
                       <p><%=product.getpDesc()%></p>
                      <h3> <span class="badge bg-light text-primary"><%=product.getpPrice()%></span>
                        <button type="button" class="btn btn-primary" onclick= "addtocart('<%= product.getpName()%>' ,<%= product.getpPrice()%>)">
                          add to cart
                        </button>

                      </h3>
                    </div>

                        <%    
                            }

                        %>        

                    </div>
                </div>
                        
                        
                        
                         <section>
    <div id="toast">

     
    </div>
  </section>
                     

               
                
                <script src="jsCart.js"> </script>
                </body>
                

                </html>

                
