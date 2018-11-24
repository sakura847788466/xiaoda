<?php
     header("content-type:text/html;charset=utf-8");
     include 'car1.php';

         $id=isset($_GET['id']) ? $_GET['id'] : '';
         // $imgurl=isset($_GET['imgurl']) ? $_GET['imgurl'] : '';
            // echo JSON_encode($res);
      // echo $id;
     $imgurl=isset($_GET['imgurl']) ? $_GET['imgurl'] : '';
     $shoptietle = isset($_GET['shoptietle']) ? $_GET['shoptietle'] : '';
     $price=isset($_GET['price']) ? $_GET['price'] : '';
     $where=isset($_GET['where']) ? $_GET['where'] : '';
     $sql="insert into car(id,imgurl,shoptietle,price,where) values('$id','$imgurl','shoptietle','price','where')";
      // $sql = "inset into car (id,imgurl) values ('$id','$imgurl')";
     $res=$conn->query($sql);
     if($res){
        echo "1";//成功返回1
     }else{
        echo "0";

     }





?>

