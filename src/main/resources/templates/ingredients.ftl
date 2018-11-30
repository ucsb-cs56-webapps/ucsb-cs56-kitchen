<!DOCTYPE html>
<html>
 <head>
   <style>

    table, td {
      border: 1px solid black;
    }

    table {
      counter-reset: rowNumber;
    }

    table tr {
      counter-increment: rowNumber;
    }

    table tr td:first-child::before {
      content: counter(rowNumber);
      min-width: 1em;
      margin-right: 0.5em;
    }
  </style>

   <title>Ingredients</title>
   <#include "head.ftl" />
 </head>
 <body>
   <#include "navbar.ftl" />
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



<p>Click the button add the ingredient.</p>
<button type="button" onclick="add1()">Add Ingredient to List</button>
<button type="button" onclick="remove2()">Delete top ingredient from List</button>
<button type="button" onclick="remove1()">Delete ingredient Option</button>
<button type="button" onclick="add2()">Reset Ingredient List </button>




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
}
function remove1() {
    var y = document.getElementById("mySelect");
    y.remove(y.selectedIndex);
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

}


</script>



 </body>
</html>

