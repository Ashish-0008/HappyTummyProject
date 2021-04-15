<%-- 
    Document   : restaurants
    Created on : Mar 28, 2021, 11:52:15 AM
    Author     : Aayush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">



  <!--  Add bootstrap icon Library  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .checked {
      color: white;
      font-size: 20px;
    }
  </style>
  <title>Restaurants </title>
</head>

<body class="bg-dark">


  <!--     
  <section class="search bar">
  
    <nav class="navbar navbar-dark bg-dark ">
      <div class="container-fluid justify-content-center">
        <form class="d-flex ">
          <input class="form-control me-2 " type="search" placeholder="Search for restaurant, cuisine or a dish" aria-label="Search">
          <button class="btn btn-outline-success " type="submit">Search</button>
        </form>
      </div>
    </nav>
  </section>
   -->



  <section class="hea ">

    <div class="container-fluid  bg-dark text-center text-danger   ">
      <h1 class="display-4 font-monospace   "> <strong>JAORA RESTAURANTS</strong> </h1>
    </div>

  </section>


  <section class="breadcrum">
    <nav class=" mx-5 navbar-expand-lg navbar-light bg-dark" aria-label="breadcrumb">
      <ol class="breadcrumb">
          <li class="breadcrumb-item"><a class="link-light text-decoration-none" href="HomePage.jsp">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Restaurants</li>
      </ol>
    </nav>
  </section>


  <section class=" text-dark bg-dark">
    <div class=" mx-0 container-fluid row row-cols-1 row-cols-md-4 g-4">
      <div class="col">
        <div class="card">
          <a class="text-decoration-none" href="restaurants/citycafe.jsp">
            <img src="images/1.jpg" class="card-img-top" alt="...">

            <div class="card-body bg-dark ">
              <h5 class="card-title text-light">City Cafe</h5>
              <p class="card-text text-danger  font-monospace">Open 11am - 11pm&nbsp; Bakery, Fast Food</p>
              <span class="badge bg-light text-dark">NEWLY OPENED</span>

              <span class="fa fa-star checked "></span>
              <span class="fa fa-star checked"></span>
              <span class="fa fa-star checked"></span>
              <span class="fa fa-star checked"></span>
          </a>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="/restaurants/The Bakery.jsp">
          <img src="images/12.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">The Bakery</h5>
            <p class="card-text text-danger  font-monospace ">Open 8am - 12pm&nbsp; Bakery, Fast Food, Cake</p>
            <span class="badge bg-light text-dark">25% OFF</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/2.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Guru Kripa</h5>
            <p class="card-text text-danger  font-monospace">Opens 9am - 12pm &nbsp; Breakfast, Lunch, Dinner </p>
            <span class="badge bg-light text-dark">FREE DELIVERY*</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
          <a class="text-decoration-none" href="restaurants/Joyo Cafe.jsp">
          <img src="images/3.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Joyo Cafe</h5>
            <p class="card-text text-danger  font-monospace">Open 24hr&nbsp; Fast Food, BreakFast Lunch, Dinner</p>
            <span class="badge bg-light text-dark">NEWLY OPENED</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/4.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Celebration</h5>
            <p class="card-text text-danger  font-monospace">Open 11am - 11pm&nbsp; Bakery,Fast Food</p>
            <span class="badge bg-light text-dark">15% OFF</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </a>
      </div>
    </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/5.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Dhaba Shaba</h5>
            <p class="card-text text-danger  font-monospace">Open 11am - 11pm&nbsp; Bakery,Fast Food</p>
            <span class="badge bg-light text-dark">FREE DELIVERY*</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </a>
      </div>
    </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/6.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Chowka Chulha</h5>
            <p class="card-text text-danger font-monospace">Open 4pm - 12pm&nbsp; Lunch, Dinner, Special Dishes</p>
            <span class="badge bg-light text-dark">NEWLY OPENED</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </a>
      </div>
    </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/7.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Jain Dhaba</h5>
            <p class="card-text text-danger  font-monospace">Open 24hr &nbsp; North Indian, South Indian, Fast Food</p>
            <span class="badge bg-light text-dark">10% OFF</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/8.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Sandwich House and Cafe</h5>
            <p class="card-text text-danger  font-monospace">Open 5pm - 11pm &nbsp; Special Sandwich, Fast Food</p>
            <span class="badge bg-light text-dark">FREE DELIVERY*</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/9.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Jain Foods</h5>
            <p class="card-text text-danger  font-monospace">Open 11am - 11pm &nbsp; Jain Lunch, Dinner</p>
            <span class="badge bg-light text-dark">25% OFF</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/10.jpg" class="card-img-top" alt="...">
          <div class="card-body bg-dark">
            <h5 class="card-title text-light">Chinese Hut</h5>
            <p class="card-text text-danger  font-monospace">Open 5pm - 12pm &nbsp; Chinese, Burger, Street Food</p>
            <span class="badge bg-light text-dark">NEWLY OPENED</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <a class="text-decoration-none" href="">
          <img src="images/11.jpg" class="card-img-top" alt="...">
          <div class="card-body  bg-dark">
            <h5 class="card-title text-light">Top n Town ice-creams</h5>
            <p class="card-text text-danger  font-monospace">Open 8am - 11pm &nbsp; Ice Cream, Desset, Bakery</p>
            <span class="badge bg-light text-dark">NEWLY OPENED</span>

            <span class="fa fa-star checked "></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
          </div>
        </a>
      </div>
    </div>
    </div>
  </section>

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
    crossorigin="anonymous"></script>
</body>

</html>