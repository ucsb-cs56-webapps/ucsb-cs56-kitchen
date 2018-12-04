<!DOCTYPE html>
<html>
 <head>
   <title>Kitchen Ingredients</title>
   <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
   <script src="/API.js"></script>
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
   }
 </style>
 <body>
   <div class="center">
     <h1>Kitchen Ingredients</h1>
     <p>This is a web app to help find you recipes you could create with only the ingredients found in your kitchen!</p>
     <a href="ingredients" style="text-transform:none" class="container unauthenticated">
         Login with Google
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
