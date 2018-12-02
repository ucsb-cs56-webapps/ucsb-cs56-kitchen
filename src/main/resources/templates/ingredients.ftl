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
   <button onclick = "location.href='recipes'" type = "button"> Go to Recipes </button>
   <h1>This is Ingredients</h1>
  <p>Same stuff, different page</p>


<form>
Select your ingredient:
<select id="mySelect">
  <option value="Flour">Flour</option>
  <option value="Water">Water</option>
  <option value="Sour Cream">Sour Cream</option>
  <option value="Rice">Rice</option>
</select>
</form>

<form>
How many ingredient:
<select id="mySelect2">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>

</select>
</form>



<p>Click the button add the ingredient.</p>
<button type="button" onclick="add1()">Add Ingredient to List</button>
<button type="button" onclick="remove2()">Delete top ingredient from List</button>
<button type="button" onclick="remove1()">Delete ingredient Option</button>
<button type="button" onclick="add2()">Reset Ingredient List </button>

<input type="text" id="ingredient"/>
<button onclick = "getIng()">Add Ingredient</button>


<table id="myTable">
  <tr>
  </tr>
</table>


<script>
function add1() {
    var x = document.getElementById("mySelect").value;
    var y = document.getElementById("mySelect2").value;
    var table = document.getElementById("myTable");
    var row = table.insertRow(0);
    var cell = row.insertCell(0);
    var cell2 = row.insertCell(1);
    cell.innerHTML = y;
    cell2.innerHTML = x;
    var z = document.getElementById("mySelect");
    z.remove(z.selectedIndex);
}
function remove1() {
    var z = document.getElementById("mySelect");
    z.remove(z.selectedIndex);
}
function remove2() {
    document.getElementById("myTable").deleteRow(0);
}
function add2() {
    var obj = {
      1 : "Flour",
      2 : "Water",
      3 : "Sour Cream",
      4 : "Rice",
      5 : "Banana",
      6 : "Textbooks",
      7 : "Kiwi",
      8 : "Banana",
      9 : "Textbooks",
      10 : "Kiwi"
    };
    var select= document.getElementById("mySelect");
    document.getElementById("mySelect").options.length = 0;
    for (index in obj){
      select.options[select.options.length] = new Option(obj[index]);
    }

  function getIng(){
    var test = document.getElementById('test');
    document.getElementById("mySelect").appendChild(test);
  }
}
</script>



 </body>
</html>


