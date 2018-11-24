<?php
    
    header("content-type:text/html;charset=utf-8");
    include 'name.php';
    // echo JSON_encode($res);
    $ipt_text=isset($_GET['username']) ? $_GET['username'] : '';
     $ipt_password=isset($_GET['passwords']) ? $_GET['passwords'] : '';

      $conn->set_charset('utf8');
    //查询用户名及密码是否匹配
        $sql="select * from zuce where unname='$ipt_text'and password2='$ipt_password'";
        
        //执行语句
        $res=$conn->query($sql);

        $row = $res->fetch_all(MYSQLI_ASSOC);

        // echo JSON_encode($row);
       if($row)
       {
        echo "1";//有的话
       }else{
        echo "0";
       }




      $res->close();
      $conn->close();

?>