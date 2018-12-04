<!DOCTYPE html>
<html>
 <head>
   <title>Kitchen Ingredients</title>
   <#include "head.ftl" />
   <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
   <script src="/API.js"></script>
 </head>
 <body>
   <#include "navbar.ftl"/>
   <h1>Kitchen Ingredients</h1>
   <p>This is a web app to help find you recipes you could create with only the ingredients found in your kitchen!</p>  
   <div class="container unauthenticated">
    With Google: <a href="/login">click here</a>
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
