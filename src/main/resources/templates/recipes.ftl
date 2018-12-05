<!DOCTYPE html>
<html>
 <head>
   <title>Recipes</title>
   <#include "head.ftl" />
 </head>
 <body>
   <#include "navbar.ftl"/>
   <h1>Recipes</h1>
  <p>Here, a user would see a list of recipes found in our database.</p>
  
  <style>
  
    table {
        border: 2px solid black;
        table-layout: auto;
        padding-top: 50px;
        padding-right: 80px;
        padding-bottom: 50px;
        padding-left: 80px;
    }

    table.center {
        margin-left:auto; 
        margin-right:auto;
      }

    td.last {
        width: 1px;
        white-space: nowrap;
    }

    img {
        width: 100%;
        height: auto;
    }

  
  </style>

 
   <table id="recipeOutput" border = "1" class="center">
     <tr>
       <th>Recipes</th>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/4535439.jpg" /><center><a href = "https://www.allrecipes.com/recipe/16409/spinach-and-strawberry-salad/?internalSource=hub%20recipe&referringContentType=Search">Spinach And Strawberry Salad </td>
       
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/1107530.jpg" /><center><a href =  "https://www.allrecipes.com/recipe/25037/best-big-fat-chewy-chocolate-chip-cookie/?internalSource=hub%20recipe&referringId=79&referringContentType=Recipe%20Hub">Chocolate Chip Cookies </a></td>
       
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/6043151.jpg" /><center><a href = "https://www.allrecipes.com/recipe/13477/double-layer-pumpkin-cheesecake/?internalSource=recipe%20hub&referringId=79&referringContentType=Recipe%20Hub&clickId=cardslot%2022">  Double Layer Pumpkin Cheesecake</a></td>

     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/560x315/4529846.jpg" /><center><a href = "https://www.allrecipes.com/recipe/255950/citrus-baked-fish/?internalSource=staff%20pick&referringId=416&referringContentType=Recipe%20Hub">Citrus Baked Fish</a></td>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/829340.jpg" /><center><a href = "https://www.allrecipes.com/recipe/104850/black-bean-and-corn-quesadillas/?internalSource=hub%20recipe&referringContentType=Search" >Black Bean and Corn Quesadillas</a></td>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/5968426.jpg" /><center><a href = "https://www.allrecipes.com/recipe/268091/easy-korean-ground-beef-bowl/?internalSource=hub%20recipe&referringContentType=Search" >Korean Ground Beef Bowl</a></td>

     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/397070.jpg" /><center><a href = "https://www.allrecipes.com/recipe/213742/meatball-nirvana/?internalSource=hub%20recipe&referringContentType=Search">Meatballs</a></td>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/3060672.jpg" /><center><a href = "https://www.allrecipes.com/recipe/49404/juiciest-hamburgers-ever/?internalSource=hub%20recipe&referringContentType=Search" >Hamburgers</a></td>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/720x405/5892736.jpg" /><center><a href = "https://www.allrecipes.com/recipe/19291/sausage-pasta/?internalSource=hub%20recipe&referringContentType=Search">Sausage Pasta </a></td>
     </tr>
     <tr>
       <td height="250"><img style="display:block;" width="100%" height="100%" src="https://images.media-allrecipes.com/userphotos/560x315/4103972.jpg" /><center><a href = "https://www.allrecipes.com/recipe/256007/best-scrambled-eggs/?internalSource=hub%20recipe&referringContentType=Search">Scrambled Eggs</a></td>
     </tr>
   </table>
  
 </body>
</html>
