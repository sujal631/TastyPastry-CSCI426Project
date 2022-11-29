d<!doctype html>
<html>
<head>
   <!--
   Mmm Tasty! It's a Pastry! Website Request Menu Page
   Author: Sujal Joshi
   Date:   11/2/22
   
   Filename: menu.html
   -->
   <meta charset="utf-8" />
   <!-- css file links-->
   <link href="tasty_reset.css" rel="stylesheet" />
   <link href="tasty_layout.css" rel="stylesheet" />
   <link href="tasty_styles.css" rel="stylesheet" />

   <!-- font awesome cdn link -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

   <title>Mmm Tasty! It's a Pastry!</title>

   <style>
      .wrapper
      {
         width: 100%;
         margin: 0 auto;
         text-align: center;
         min-height:856px;
      }

      .wrapper .heading
      {
         font-family: Cake, sans-serif;
         color: black;
         text-transform: capitalize;
         font-size: 50px;
         position: relative;
         display: inline-block;
         margin-bottom: 25px;
         text-shadow: -5px 5px 5px #abdbe3;
      }

      .wrapper .favourites table{
         border-collapse: collapse;
         float: right;
         width: 72%;
         color: #000000;
         font-family: Cake, sans-serif;
         font-size: 1.5em;
         text-align: center;
         margin: 0 5% 2% 5%;
      }

      .wrapper .favourites th{
         background-color: #ffc7f6;
         color: black;
         padding: 5px;
      }

      .wrapper .favourites tr:nth-child(even){
         background-color: #abdbe3;

      } 
   </style>

</head>

<body>
   <!--header picture and title of page-->
   <header>
      <p>Mmm Tasty! It's a Pastry!</p>
   </header>
   
   <!--vertical navigation bar-->
   <nav>
      <ul>
         <li><a href="index.html">Home</a></li>
         <li><a href="menu.html">Menu</a></li>
         <li>About
            <ul class="submenu">
               <li><a href="aboutus.html">About Us</a></li>
               <li><a href="reviews.html">Reviews</a></li>
            </ul>
         </li>
		 <li><a href="reservation.html">Reservations</a></li>
      </ul>
   </nav>
   
   <!--Menu-->
   <div class="wrapper" >

      <!-- menu head-->

      <h1 class="heading" style="margin-top: 2%">Customers' Favourites</h1>

      <div class="favourites">
         <table>
         <tr>
               <th>Item Number</th>
               <th>Item Name</th>
               <th>Price</th>
               <th>Likes</th>
         </tr>
         <?php
         $conn = mysqli_connect("localhost", "root", "", "itemsdb");
         $sql = "SELECT * FROM items";
         $result = $conn->query($sql);

         if($result->num_rows >0){
               while ($row = $result-> fetch_assoc()){
                  echo"<tr><td>" . $row["item_number"] . "</td><td>" . $row["item_name"] . "</td><td>" . $row["price"] . "</td><td>" . $row["likes"] . "</td></tr>";
               }
         }
         else{
               echo "No Results";
         }
         $conn->close();
         ?>
         </table>
      </div>

   </div>
      
   
   <!--footer-->
   <footer>
      <address>
      All Rights Reserved &copy; Live Laugh Love Legion &#8226; Lake Charles, LA
      </address>
   </footer>

   
   
</body>
</html>


