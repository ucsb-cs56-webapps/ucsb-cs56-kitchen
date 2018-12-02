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
  <option value="Pound of Beef">Pound of Beef</option>
  <option value="Piece of Bread">Piece of Bread</option>
  <option value="Stick of Butter">Stick of Butter</option>
  <option value="Pound of Chicken">Pound of Chicken</option>
  <option value="Eggs">Eggs</option>
  <option value="Pound of Fish">Pound of Fish</option>
  <option value="Cup of Flour">Cup of Flour</option>
  <option value="Teaspoon of Oil">Teaspoon of Oil</option>
  <option value="Cup of Parsley">Cup of Parsley</option>
  <option value="Pound of Pork">Pound of Pork</option>
  <option value="Pound of Potatoe">Pound of Potatoe</option>
  <option value="Cup of Rice">Cup of Rice</option>
  <option value="Teaspoon of Salt">Teaspoon of Salt</option>
  <option value="Cup of Soy Sauce">Cup of Soy Sauce</option>
  <option value="Cup of Water">Cup of Water</option>
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
  <option value="11">11</option>
  <option value="12">12</option>

</select>
</form>



<p>Click the button add the ingredient.</p>
<button type="button" onclick="add1()">Add Ingredient to List</button>
<button type="button" onclick="remove2()">Delete top ingredient from List</button>
<button type="button" onclick="remove1()">Delete ingredient Option</button>
<button type="button" onclick="add2()">Reset All</button>

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
      1 : "Pound of Beef",
      2 : "Piece of Bread",
      3 : "Stick of Butter",
      3 : "Pound of Chicken",
      5 : "Eggs",
      6 : "Pound of Fish",
      7 : "Cup of Flour",
      8 : "Onion",
      9 : "Teaspoon of Oil",
      10 : "Cup of Parsley",
      11 : "Pound of Pork",
      12 : "Pound of Potatoe",
      13 : "Cup of Rice",
      14 : "Teaspoon of Salt",
      15 : "Cup of Soy Sauce",
      16 : "Cup of Water"
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
 </body>
</html>



