<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <%@include file="common_components/common_css_js.jsp"  %>
  <script src="custom.js"></script>
  <title>Project</title>

</head>

<body>

  <!-- navbar -->


  <%@include file="common_components/navbar.jsp"  %>

  
  
  <!-- carousel -->

  <section class="carousel">
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
          aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
          aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
          aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">

          <img src="images/slider-image1.jpg" class="d-block w-100 navbar-fixed-top" alt="...">
          <div class="carousel-caption">

            <h4 class="h3-responsive">Our mission is to provide food to every needy</h4>
            <h1>Wish to donate untouched food </h1>
            <a href="#" target="_blank"><button type="button"
                class="btn btn-default  fs-3 fw-bolder text-decoration-none  text-wrap text-success">Donate
                Now</button></a>
          </div>
        </div>
        <div class="carousel-item">
          <div class="carousel-caption">

            <h4 class="h3-responsive">Flat 50% OFF on your First order</h4>
            <h1>Your First Order is just a click away</h1>
            <a href="#" target="_blank"><button type="button"
                class="btn btn-default  fs-3 fw-bolder text-decoration-none  text-wrap text-success">Order
                Now</button></a>
          </div>
          <img src="images/slider-image2.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <div class="carousel-caption ">

            <h4 class="h3-responsive">New Restaurant in Town</h4>
            <h1>Enjoy our special menus every Sunday and Friday </h1>
            <a href="#" target="_blank"><button type="button"
                class="btn btn-default  fs-3 fw-bolder text-decoration-none  text-wrap text-success">Donate
                Now</button></a>
          </div>
          <img src="images/slider-image3.jpg" class="d-block w-100" alt="...">
        </div>
      </div>

    </div>
  </section>



  <!-- cards -->

  <div class="container my-5 ">
    <div class="container">
      <div class="row mb-2">
        <div class="col-md-6 ">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-light"></strong>
              <h3 class="mb-0">Food</h3>
              <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to
                additional content.</p>
              <a class="nav-link active text- fw-bolder" href="restaurants.jsp">Order</a>
            </div>
            <div class="col-auto d-none d-lg-block">
              <img class="bd-placeholder-img" width="200" height="250" src="images/pizz.png" alt="">
            </div>
          </div>
        </div>
        <div class="col-md-6 ">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-light"></strong>
              <h3 class="mb-0">Grocery</h3>
              <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional
                content.</p>
              <a class="nav-link active text-suc fw-bolder " href="restaurants.jsp">Order</a>
            </div>
            <div class="col-auto d-none d-lg-block">
              <img class="bd-placeholder-img" width="200" height="250" src="images/pizz.png" alt="">

            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row mb-2">
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-light"></strong>
              <h3 class="mb-0">Vegetables</h3>
              <p class="card-text mb-auto"> Tooty fruity fresh and fruity Eat Fresh Stay Healty.</p>
              <a class="nav-link active text-decoration-line-through fw-bolder" href="restaurants.jsp">Order</a>
            </div>
            <div class="col-auto d-none d-lg-block">
              <img class="bd-placeholder-img" width="200" height="250" src="images/pizz.png" alt="">
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <strong class="d-inline-block mb-2 text-light"></strong>
              <h3 class="mb-0">Tiffin</h3>
              <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional
                content.</p>
              <a class="nav-link active text-dark fw-bolder" href="restaurants.jsp">Order</a>
            </div>
            <div class="col-auto d-none d-lg-block">
              <img class="bd-placeholder-img" width="200" height="250" src="images/pizz.png" alt="">

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <!-- offers -->

  <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/offer_slider-1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Dal bati</h2>
          <button class="btn btn-primary">order now</button>
        </div>
      </div>
      <div class="carousel-item">
        <img src="images/offer_slider-2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Second Offer</h2>
          <button type="" class="btn btn-primary">Submit</button>

        </div>
      </div>
      <div class="carousel-item">
        <img src="images/offer_slider-3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h2>Third Offer</h2>
          <button class="btn btn-primary">Submit</button>

        </div>
      </div>
    </div>

  </div>



  
  <!--  Our 4 Step Services-->

  <section class="container my-4 ">

    <h1 class="text-center text-success my-5  "> Ordering Food Was Never So Easy</h1>
    <h3 class="text-center text-danger">Just Follow 4 Step</h3>
    <div class="container my-4 mx-4">
      <div class="row ">
        <div class="col-lg-2 col-md-3 col-sm-6 ">
          <img src="images/one.png" alt="" />
        </div>
        <div class="col-lg-1 col-md-3 col-sm-6 my-5 ">
          <img src="images/arrow.png" alt="" />
        </div>
        <div class="col-lg-2 col-md-3 col-sm-6">
          <img src="images/two.png" alt="" />
        </div>
        <div class="col-lg-1 col-md-3 col-sm-6 my-5 ">
          <img src="images/arrow.png" alt="" />
        </div>
        <div class="col-lg-2 col-md-3 col-sm-6">
          <img src="images/thrww.png" alt="" />
        </div>
        <div class="col-lg-1 col-md-3 col-sm-6 my-5 ">
          <img src="images/arrow.png" alt="" />
        </div>
        <div class="col-lg-2 col-md-3 col-sm-6">
          <img src="images/four.png" alt="" />
        </div>
      </div>
    </div>
  </section>




  <!-- footer -->

  <section class="footer">
    <footer class="bg-dark text-center text-white">
      <!-- Grid container -->
      <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
          <!-- Facebook -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-facebook"></i></a>

          <!-- Twitter -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-twitter"></i></a>

          <!-- Google -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-google"></i></a>

          <!-- Instagram -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-instagram"></i></a>

          <!-- Linkedin -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-linkedin"></i></a>

          <!-- Github -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"><i class="fa fa-github"></i></a>
        </section>

      </div>
 

      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2021 Copyright:
        <a class="text-white" href="#">HappyTummy.com</a>
      </div>
      <!-- Copyright -->
    </footer>

  </section>

  <!-- scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
    crossorigin="anonymous"></script>


</body>

</html>