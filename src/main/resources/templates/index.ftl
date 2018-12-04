<!DOCTYPE html>
<html>
 <head>
   <title>Kitchen Ingredients</title>
   <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
   
   <!-- Compiled and minified CSS -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/css/materialize.min.css">
   <!-- Compiled and minified JavaScript -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js"></script>
 </head>
 <style>
   body {
       text-align: center;
       display: block;
       margin-left: auto;
       margin-right: auto;
       position: relative;
       padding: 250px;
   }
   center {
       position: absolute;
       top: 50%;
       left: 50%;
       transform: translate(-50%, -50%);
   }/* Shared */
  .loginBtn {
    box-sizing: border-box;
    position: relative;
    /* width: 13em;  - apply for fixed size */
    margin: 0.2em;
    padding: 0 15px 0 46px;
    border: none;
    text-align: left;
    line-height: 34px;
    white-space: nowrap;
    border-radius: 0.2em;
    font-size: 16px;
    color: #FFF;
  }
  .loginBtn:before {
    content: "";
    box-sizing: border-box;
    position: absolute;
    top: 0;
    left: 0;
    width: 34px;
    height: 100%;
  }
  .loginBtn:focus {
    outline: none;
  }
  .loginBtn:active {
    box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
  }

  /* Google */
  .loginBtn--google {
    /*font-family: "Roboto", Roboto, arial, sans-serif;*/
    background: #DD4B39;
  }
  .loginBtn--google:before {
    border-right: #BB3F30 1px solid;
    background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;
  }
  .loginBtn--google:hover,
  .loginBtn--google:focus {
     background: #E74B37;
   }

 </style>
 <body>
   <div class="center">
     <h1>Kitchen Ingredients</h1>
     <p>This is a web app to help find you recipes you could create with only the ingredients found in your kitchen!</p>
     <a href="ingredients" style="text-transform:none" class="container unauthenticated">
         <button class="loginBtn loginBtn--google">
              Login with Google
         </button>
     </a>
   </div>
   <div class="container authenticated" style="display: none">
       Logged in as: <span id="user"></span>
   </div>
   <script>
     $.get("/user", function(data) {
       $("#user").html(data.userAuthentication.details.name);
       $(".unauthenticated").hide()
       $(".authenticated").show()
     });
   </script>
</body>
</html>
