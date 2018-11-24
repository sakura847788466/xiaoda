jQuery(function(){

    
      $(".ipt_btn ").on("click",function(){

         var ipt_text = $(".ipt_text ").val();
          var ipt_password = $(".ipt_password ").val();
            console.log(ipt_text);
            
            
              $.ajax({
                    type: "GET",
                    url: "../api/denglu.php",
                    async: true, //异步
                    data: { //传过去的数据
                        "username": ipt_text,
                        "passwords": ipt_password
                    },
                    success: function(res) { 
                        console.log(res);

                      if(res ==1){
                        alert("登录成功,跳转到首页....");
                         location.href = "../index.html";
                         // $(this).attr("href",`http://localhost/parttwo/html/gouwuche.html?ids=$`)
                      }else{
                         alert("用户名不存在，请注册");
                         location.href = "zuce.html";
                      }
                    } 
                    
                    
                    
                })
          
          
    


      }) 

})