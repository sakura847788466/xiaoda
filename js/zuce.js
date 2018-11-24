jQuery(function(){

  // //获取url中的参数
  // function getUrlParam(name) {
  //  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
  //  var r = window.location.search.substr(1).match(reg); //匹配目标参数
  //  // console.log(r);
  //  if (r != null) return unescape(r[2]); return null; //返回参数值
  // }
  // //接收URL中的参数shopId
  // var tel = getUrlParam('tel');
  // var password = getUrlParam('password');
  //   console.log(tel);
  //   console.log(password);







    $(".btn").on("click",function(){
    var username = $(".tel").val(); //获取框的内容
      // console.log(username);
     var password = $("#password").val();
     // console.log(password);
      var yonghuming = $(".right").val();
      // console.log(yonghuming);
         if(username != "" && password != ""){

            $.ajax({
                    type: "get",
                    url: "../api/zuce.php",
                    async: true, //异步
                    data: { //传过去的数据
                        "username": username,
                        "passwords":password, 
                         "yonghuming":yonghuming            
                    },
                    success: function(res) { 
                        console.log(res);
                        if(res){
                        alert("注册成功");
                        location.href = "denglu.html";
                    }
                 }  
                    
                    
                })
    


         }else {
            alert("手机号和密码不能为空");
         }


})

})