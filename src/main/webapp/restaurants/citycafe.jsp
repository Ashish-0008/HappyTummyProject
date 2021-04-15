

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <%@include file="../common_components/common_css_js.jsp" %>
  <%@include file="../common_components/common_modals.jsp" %>
  <%@include file="../common_components/common css for restaurants.jsp" %>
  
  <title>City Cafe</title>

</head>

<body>

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
          <li class="breadcrumb-item active" aria-current="page">City Cafe</li>
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

    <h1 class="display-4 mx-4">City Cafe</h1>
    <h5 class="mx-4 mt-3"> Quick Bites - Bakery, FastFood</h5>
    <h2 class="mt-3 mx-4">Order Online</h2>
  </section>

  <section>
    <div class="container-fluid">
      <div class="row">
        <!-- left -->
        <div class="col-3" style="   position: static; top: auto;">
          <div class="vid">
            <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home"
                type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Recommended(3) </button>
              <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile"
                type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cakes(5)</button>
              <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages"
                aria-selected="false">Pastries(5)</button>
              <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill"
                data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings"
                aria-selected="false">Milkshakes(10)</button>
            </div>
          </div>
        </div>
        <!-- right -->

        <div class="col-9" style="overflow-y: scroll; height: calc(100vh - 250px); position: static; top: auto; ">
          <div class="vid">
            <div class="tab-content" id="v-pills-tabContent">


              <!-- Recommended -->
              <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"
                aria-labelledby="v-pills-home-tab">
                <div class="container mx-2">
                  <hr>
                  <div class="row">
                    <div class="col-2">
                      <img src="/images/cc cake1.jpg" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class="">Choco Chips Cake</h1>
                      <p>Choco chips loaded between the spongy soft layers of chocolate cream. Eggless cake.</p>
                      <h3> <span class="badge bg-light text-primary">$100</span>
                        <button type="button" class="btn btn-primary" onclick="add_to_cart(1,8,8)">
                          add to cart
                        </button>

                      </h3>
                    </div>





                    <hr>
                    <div class="row mt-3">
                      <div class="col-2">
                        <img src="/images/cc cake2.jpg" class="img-fluid" alt="">

                      </div>
                      <div class="col-4">
                        <h1 class="">Almonds Cake</h1>
                        <p>A union of almond and chocolate flavor made to offer you a distinct taste and a special
                          treat.
                          Eggless cake.</p>
                        <h3> <span class="badge bg-light text-primary">$100</span>
                          <button onclick="add_to_cart(2,2.1,2.2)">
                            add to cart
                          </button>

                      </div>

                    </div>
                    <hr>
                    <div class="row mt-3">
                      <div class="col-2">
                        <img src="/images/cc cake9.jpg" class="img-fluid" alt="">

                      </div>
                      <div class="col-4">
                        <h1 class="">Red Velvet Heart Cake</h1>
                        <p>Chocolate sponge layered with a delightful combination of chocolate truffle and cream.
                          Eggless cake</p>
                        <h3> <span class="badge bg-light text-primary">$100</span>
                          <button onclick="add_to_cart(3,3.1,3.2)">
                            add to cart
                          </button>


                      </div>
                    </div>

                  </div>
                </div>
              </div>

              <!-- Cakes -->
              <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">

                <div class="container mx-2">
                  <div class="row">
                    <div class="col-2">
                      <img src="/images/cc cake5.jpg" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class="">Butterscotch Cake</h1>
                      <p>Vanilla base layered with caramel blended vanilla cream and loaded with crunchy butter scotch
                        nuts.
                        Eggless cake</p>
                      <h3> <span class="badge bg-light text-primary">$100</span>

                    </div>
                  </div>
                  <hr>

                  <div class="row mt-3">
                    <div class="col-2">
                      <img src="/images/cc cake6.jpg" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class="">Rasmalai Cake</h1>
                      <p>Made from fresh rasmalai as base in the cake.</p>
                      <h3> <span class="badge bg-light text-primary">$100</span>

                    </div>
                  </div>

                  <hr>

                  <div class="row mt-3">
                    <div class="col-2">
                      <img src="/images/cc cake7.jpg" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class="">White Forest Cake</h1>
                      <p>Vanilla cake layered with red cherries & white chocolate flakes. Eggless cake</p>
                      <h3> <span class="badge bg-light text-primary">$100</span>

                    </div>
                  </div>
                  <hr>
                  <div class="row mt-3">
                    <div class="col-2">
                      <img src="/images/cc cake8.jpg" class="img-fluid" alt="">

                    </div>
                    <div class="col-4">
                      <h1 class="">Chocolate Cake</h1>
                      <p>Truffle inside and truffle out side. A pure chocolate treat for the true fans. Eggless cake</p>
                      <h3> <span class="badge bg-light text-primary">$100</span>

                    </div>
                  </div>


                </div>

              </div>

              <!-- Pastries -->
              <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                ...........
                ////

              </div>

              <!-- Milkshakes -->
              <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                ...
                ////
              </div>

            </div>
          </div>
        </div>
      </div>

    </div>
  </section>


  <section>
    <div id="toast">

     
    </div>
  </section>

          <script src="jsCart.js"></script>
  




</body>

</html>