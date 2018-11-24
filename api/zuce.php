<?php
   //代码功能    将用户名 密码 手机号  插入到数据库中
  include "name.php";
  $username=isset($_GET['username']) ? $_GET['username'] : '';
  $passwords=isset($_GET['passwords']) ? $_GET['passwords'] : '';
  $yonghuming=isset($_GET['yonghuming']) ? $_GET['yonghuming'] : '';

   // echo $username;
  

    // var_dump($username);
    // echo JSON_encode($res);
 $sql="insert into zuce(unname,password2,yonghuming) values('$username','$passwords','$yonghuming')";
 //插入 数据库
     $res=$conn->query($sql);
     if($res){
        echo "1";//成功返回1
     }else{
        echo "0";

     }
 
     // $res->close();
     // $conn->close();
?>
