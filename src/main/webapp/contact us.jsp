
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
      <%@include file="common_components/common_css_js.jsp"  %>
    <title>Contact Us</title>
  </head>
  <body> 
   <section>
    <div class="content">
    
      <div class="container">
        <div class="row align-items-stretch no-gutters contact-wrap">
          <div class="col-md-6">
            <div class="form h-100 my-3">
              <h1 class="text-center text-primary " >We would Love to hear From You</h1>
              <form class="mb-5 my-4" method="post" id="contactForm" name="contactForm">
                <div class="row">
                  <div class="col-md-6 form-group mb-5">
                    <label for="" class="col-form-label">Name *</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Your name">
                  </div>
                  <div class="col-md-6 form-group mb-5">
                    <label for="" class="col-form-label">Email *</label>
                    <input type="text" class="form-control" name="email" id="email"  placeholder="Your email">
                  </div>
                </div>
  
                <div class="row">
                  <div class="col-md-6 form-group mb-5">
                    <label for="" class="col-form-label">Phone</label>
                    <input type="text" class="form-control" name="phone" id="phone"  placeholder="Phone #">
                  </div>
                 
                </div>
  
                <div class="row">
                  <div class="col-md-12 form-group mb-5">
                    <label for="message" class="col-form-label">Message *</label>
                    <textarea class="form-control" name="message" id="message" cols="30" rows="4"  placeholder="Write your message"></textarea>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12 form-group">
                    <input type="submit" value="Send Message" class="btn btn-primary rounded-0 py-2 px-4">
                    <span class="submitting"></span>
                  </div>
                </div>
              </form>
  
          
            </div>
          </div>
          <div class="col-md-6 my-5">
        <img src="images/about-image.jpg" width="600"  alt="">
            </div>
          </div>
        </div>
      </div>
  
    </div>
      
   </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

  </body>
</html>