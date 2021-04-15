  
  <style>
      
    .vid {
      overflow: hidden;
      position: relative;
      width: 100%;
    }

    .vid::after {
      padding-top: 56.25%;
      display: block;
      content: " ";
    }

    .vid iframe {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }

    #navBarSearchForm input[type=search] {
      width: 330px !important;
    }



    /* Toast css */

    #toast {
      min-width: 300px;
      position: fixed;
      bottom: 30px;
      left: 50%;
      margin-left: -150px;
      background-color: #333;
      padding: 15px;
      color: aliceblue;
      text-align: center;
      z-index: 1;
      font-size: 18px;
      visibility: hidden;
      box-shadow: 0px 0px 100px #0000;
    }

    #toast.display {
      visibility: visible;

      animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
    }

    @keyframes fadeIn {
      from {
        bottom: 0;
        opacity: o;
      }

      to {
        bottom: 30px;
        opacity: 1;
      }
    }

    @keyframes fadeOut {
      from {
        bottom: 30;
        opacity: 1;
      }

      to {
        bottom: 0px;
        opacity: 0;
      }
    }
  </style>
