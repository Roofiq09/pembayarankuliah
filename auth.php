<?php
 
// mengecek ada tidaknya session untuk username
if (!isset($_SESSION['nama_admin']))
{
    header('location: loginauth.php');
    //echo "<h1>Anda belum login</h1>";
    exit;
}
 
?>