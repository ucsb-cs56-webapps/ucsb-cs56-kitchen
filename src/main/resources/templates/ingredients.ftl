<!DOCTYPE html>
<html>
 <head>
   <style>
    table, td {
      border: 1px solid black;
    }
  </style>

   <title>Ingredients</title>
   <#include "head.ftl" />
 </head>
 <body>
   <script type="text/javascript" src="/webjars/js-cookie/js.cookie.js"></script>
   <script src="https://www.gstatic.com/firebasejs/5.6.0/firebase.js"></script>
   <script src="/API.js"></script>
   <button onclick = "location.href='recipes'" type = "button"> Go to Recipes </button>
   <h1>This is Ingredients</h1>

<form>
Select your ingredient:
<select id="mySelect">
  <option value="baking soda">Baking Soda</option>
  <option value="basil">Basil</option>
  <option value="black beans">Black Beans</option>
  <option value="black pepper">Black Pepper</option>
  <option value="bread crumbs">Bread Crumbs</option>
  <option value="brown rice">Brown Rice</option>
  <option value="brown sugar">Brown Sugar</option>
  <option value="butter">Butter</option>
  <option value="cayenne pepper">Cayenne Pepper</option>
  <option value="cheese (cheddar)">Cheese (Cheddar)</option>
  <option value="cheese (jack)">Cheese (Jack)</option> 
  <option value="cheese (parmesan)">Cheese (Parmesan)</option>
  <option value="chicken broth">Chicken Broth</option>
  <option value="chocolate chips">Chocolate Chips</option>
  <option value="cinnamon">Cinnamon</option>
  <option value="cloves">Cloves</option>
  <option value="cooking spray">Cooking Spray</option>
  <option value="corn">Corn</option>
  <option value="cream cheese">Cream Cheese</option>
  <option value="diced tomato">Diced Tomato</option>
  <option value="egg">Egg</option>
  <option value="egg yolk">Egg Yolk</option> 
  <option value="evaporated milk">Evaporated Milk</option>
  <option value="flour">Flour</option>
  <option value="garlic">Garlic</option>
  <option value="garlic salt">Garlic Salt</option>
  <option value="ginger">Ginger</option>
  <option value="graham cracker">Graham Cracker</option>
  <option value="ground beef">Ground Beef</option>
  <option value="ham">Ham</option>
  <option value="heavy whipping cream">Heavy Whipping Cream</option>
  <option value="hot sauce">Hot Sauce</option>  
  <option value="italian sausage">Italian Sausage</option>
  <option value="italian seasoning">Italian Seasoning</option>
  <option value="lemon juice">Lemon Juice</option>
  <option value="lime juice">Lime Juice</option>
  <option value="milk">Milk</option>
  <option value="nutmeg">Nutmeg</option>
  <option value="olive oil">Olive Oil</option>
  <option value="onion">Onion</option>
  <option value="onion (green)">Onion (Green)</option>
  <option value="orange juice">Orange Juice</option>  
  <option value="oregano">Oregano</option>
  <option value="paprika">Paprika</option> 
  <option value="parsley">Parsley</option>
  <option value="pasta">Pasta</option>
  <option value="poppy seeds">Poppy Seeds</option>
  <option value="pumpkin puree">Pumpkin Puree</option>
  <option value="red pepper flakes">Red Pepper Flakes</option>
  <option value="salsa">Salsa</option>
  <option value="salt">Salt</option>
  <option value="sesame oil">Sesame Oil</option> 
  <option value="sesame seeds">Sesame Seeds</option>
  <option value="soy sauce">Soy Sauce</option>
  <option value="spinach">Spinach</option>
  <option value="strawberry">Strawberry</option>
  <option value="tortillas">Tortillas</option>
  <option value="vanilla extract">Vanilla Extract</option>
  <option value="vegetable oil">Vegetable Oil</option>
  <option value="whipped cream">Whipped Cream</option>
  <option value="white sugar">White Sugar</option>
  <option value="white wine vinegar">White Wine Vinegar</option>
  <option value="worcestershire sauce">Worcestershire Sauce</option>
  
</select>
</form>

<p>Click the button add the ingredient.</p>
<button type="button" onclick="add1()">Add Ingredient to List</button>
<button type="button" onclick="remove2()">Delete top ingredient from List</button>
<button type="button" onclick="add2()">Reset All</button>

<table id="myTable">
  <tr>
  </tr>
</table>

<script>
function add1() {
    var x = document.getElementById("mySelect").value;
    var table = document.getElementById("myTable");
    var row = table.insertRow(0);
    var cell = row.insertCell(0);
    cell.innerHTML = x;
    //var z = document.getElementById("mySelect");
    //z.remove(z.selectedIndex);
    //database
    $.get("/user", function(data) {
            var id =data.userAuthentication.details.id;
            firebase.database().ref('users/' + id + '/ingredient' + x).set(" ");
    });
}
function remove2() {
    document.getElementById("myTable").deleteRow(0);
}
function add2() {
    var obj = {
      1 : "Baking Soda",
      2 : "Basil",
      3 : "Black Beans",
      4 : "Black Pepper",
      5 : "Bread Crumbs",
      6 : "Brown Rice",
      7 : "Brown Sugar",
      8 : "Butter",
      9 : "Cayenne Pepper",
      10 : "Cheese (Cheddar)",
      11 : "Cheese (Jack)",
      12 : "Cheese (Parmesan)",
      13 : "Chicken Broth",
      14 : "Chocolate Chips",
      15 : "Cinnamon",
      16 : "Cloves",
      17 : "Cooking Spray",
      18 : "Corn",
      19 : "Cream Cheese",
      20 : "Diced Tomato",
      21 : "Egg",
      22 : "Egg Yolk",
      23 : "Evaporated Milk",
      24 : "Flour",
      25 : "Garlic",
      26 : "Garlic Salt",
      27 : "Ginger",
      28 : "Graham Cracker",
      29 : "Ground Beef",
      30 : "Ham",
      31 : "Heavy Whipping Cream",
      32 : "Hot Sauce",  
      33 : "Italian Sausage",
      34 : "Italian Seasoning",
      35 : "Lemon juice",
      36 : "Lime juice",
      37 : "Milk",
      38 : "Nutmeg",
      39 : "Olive Oil",
      40 : "Onion",
      41 : "Onion (Green)",
      42 : "Orange Juice",  
      43 : "Oregano",
      44 : "Paprika",
      45 : "Parsley",
      46 : "Pasta",
      47 : "Poppy Seeds",
      48 : "Pumpkin Puree",
      49 : "Red Pepper Flakes",
      50 : "Salsa",
      51 : "Salt",
      52 : "Sesame Oil",  
      53 : "Sesame Seeds",
      54 : "Soy Sauce",
      55 : "Spinach",
      56 : "Strawberry",
      57 : "Tortillas",
      58 : "Vanilla Extract",
      59 : "Vegetable Oil",
      60 : "Whipped Cream",
      61 : "White Sugar",
      62 : "White Wine Vinegar",
      63 : "Worcestershire Sauce",     
    };
    var select= document.getElementById("mySelect");
    document.getElementById("mySelect").options.length = 0;
    for (index in obj){
      select.options[select.options.length] = new Option(obj[index]);
    }
    var elmtTable = document.getElementById('myTable');
    var tableRows = elmtTable.getElementsByTagName('tr');
    var rowCount = tableRows.length;
    for (var x=rowCount-1; x>=0; x--) {
      document.getElementById("myTable").deleteRow(x);
}
}
</script>
<div class="container authenticated" style="display: none">
        Logged in as: <span id="user"></span>
    <div>
       <button onClick="logout()" type="button">Logout</button>
    </div>
</div>
    <script>

	   $
              .ajaxSetup({
                beforeSend : function(xhr, settings) {
                  if (settings.type == 'POST' || settings.type == 'PUT'
                      || settings.type == 'DELETE') {
                    if (!(/^http:.*/.test(settings.url) || /^https:.*/
                        .test(settings.url))) {
                      xhr.setRequestHeader("X-XSRF-TOKEN",
                          Cookies.get('XSRF-TOKEN'));
                    }
                  }
                }
              });

          $.get("/user", function(data) {
	    var id =data.userAuthentication.details.id;
	    var email =data.userAuthentication.details.email;
             
            var ref = firebase.database().ref('users/' + id);
	    ref.once("value")
		.then(function(snapshot) {
			var a = snapshot.exists();
			if (!a) {
				ref.set(email);
	    			}
		}); 
            $("#user").html(data.userAuthentication.details.email);
            $(".unauthenticated").hide()
            $(".authenticated").show()
          });

           var logout = function() {
            $.post("/logout", function() {
              $("#user").html('');
              $(".unauthenticated").show();
              $(".authenticated").hide();
	      location.href='/';
            })
            return true;
          }

    </script>
</body>
</html>
