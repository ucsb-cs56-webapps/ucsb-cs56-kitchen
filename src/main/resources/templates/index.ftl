<!DOCTYPE html>
<html>
 <head>
   <title>Spring Boot Freemarker Demo</title>
   <#include "head.ftl" />
   <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
   <script>
   var config = {
	    apiKey: "",
	    authDomain: "kitchen-ingredients-1a9ea.firebaseapp.com",
	    databaseURL: "https://kitchen-ingredients-1a9ea.firebaseio.com",
	    projectId: "kitchen-ingredients-1a9ea",
	    storageBucket: "kitchen-ingredients-1a9ea.appspot.com",
	    messagingSenderId: "769598996092"
	   };
   firebase.initializeApp(config); 
   </script>
 </head>
 <body>
   <#include "navbar.ftl" />
   <h1>Kitchen Ingredients</h1>
   <p>This is a web app to help find you recipes you could create with only the ingredients found in your kitchen!</p>  
 Username: <input type="text" id="username" value=""><br/>
 <button onclick ="getValue()">Submit</button>
 <p id="test"></p>
 <script>
	function getValue(){
		var test = document.getElementById('test');
		var username = document.getElementById('username').value;
		firebase.database().ref().child("Users").set(username);
		test.innerHTML=username;
	}
 </script>
 </body>
</html>
