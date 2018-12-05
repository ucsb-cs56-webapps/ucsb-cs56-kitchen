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
       background-image: url( "https://media.fshoq.com/images/189/tomatoes-and-basil-on-the-table-in-kitchen-189-small.jpg");
       background-size: cover;
       background-repeat: no-repeat;
       background-position: center center;
       text-align: center;
       display: block;
       margin-left: auto;
       margin-right: auto;
       position: relative;
       padding: 250px;
       color: white;
   }
   center {
       position: absolute;
       top: 50%;
       left: 50%;
       transform: translate(-50%, -50%);
   }
   h1 {
     color: white;
   }
   p {
     color: white;
   }
 </style>
 <body background = "bg.jpg">
   <div class="center">
     <h1>Kitchen Ingredients</h1>
     <p>This is a web app to help find you recipes you could create with only the ingredients found in your kitchen!</p>
     <button onClick = 'location.href="ingredients"' class = "btn btn-primary">
         Login With Google
     </button>

   <script>
     $.get("/user", function(data) {
       $("#user").html(data.userAuthentication.details.name);
       $(".unauthenticated").hide()
       $(".authenticated").show()
     });
   </script>
</body>
</html>
