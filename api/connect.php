<?php
  

$servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = 'goodslist';

        // 创建连接
        $conn = new mysqli($servername, $username, $password, $dbname);

        // 检测连接
        if ($conn->connect_error) {
            die("连接失败: " . $conn->connect_error);
        } ;

          //查询前设置编码，防止输出乱码
          $conn->set_charset('utf8');
  //         // echo "连接成功"
  //        //查询结果集
          $result = $conn->query('select * from shangpin');
           $res = $result->fetch_all(MYSQLI_ASSOC);
           // var_dump($res);
           //将数据输出到前端，将字符串转换成为数组
            // echo JSON_encode($res);







?>