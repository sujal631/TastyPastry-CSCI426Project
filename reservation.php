<?php 

    // database connection code
    if(isset($_POST['reserver']))
    {
    // $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
    $con = mysqli_connect('localhost', 'root', '','tastypastry');

    $reserver = $_POST['reserver'];
    $Seating = $_POST['Seating'];
    $quantity = $_POST['quantity'];
    $reservation = $_POST['reservation'];
    $reservationtime = $_POST['reservationtime'];
    $comments = $_POST['comments'];

    // database insert SQL code
    $sql = "INSERT INTO `reservations` (`id`, `reserver`, `Seating`, `quantity`, `reservation`, `reservationtime`, `comments`)
         VALUES ('0', '$reserver', '$Seating', '$quantity', '$reservation', '$reservationtime', '$comments')";

    // insert in database 
    $rs = mysqli_query($con, $sql);
    if(!$rs)
    {
        echo "Are you a genuine visitor?";
    }
    else
    {
        header('Location: http://localhost/TastyPastry-CSCI426Project/ReservationConfirmation.html');
    } 
    }
    
?>