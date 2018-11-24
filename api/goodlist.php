<?php
  header("content-type:text/html;charset=utf-8");
  include("connect.php");
  
  $panduan=isset($_GET['panduan']) ? $_GET['panduan'] : '';
 // var_dump($panduan);
// mysqli_query($conn , "set names utf8");
  
     // $test = isset($_get["test"]);

         $sql = 'select * from shangpin';
      
 
      $res=$conn->query($sql);
      $res = mysqli_fetch_all($res, MYSQL_ASSOC);
      echo JSON_encode($res);

   


?>