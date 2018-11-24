    jQuery(function(){
             var xuanran = $(".xuanran"),
        str="";

          $.ajax({
              url: '../api/goodlist.php',
              type: 'get',
              dataType: 'json',
              data: {
              },
              success:function(res){
                  console.log(res);
                  
                  xuanran.append(res.map(function(item){
                      // console.log(item.id);
                      return '<li class="item firstrow"><img style="height:200px;width:200px;"src="'+ item.imgurl +'">'+'<a class="s_l_name" href="xiangqingye.html?shopId='+item.id+'">'+item.shoptietle+'</a>'
                      +'<p class="ziti"><strong>最新上架：￥'+item.price+'</strong></p></li>'
                  }));
                    // 下降排序
                $(".jiage").click(function(){
                    $(".products_wrap ").find("li").remove();

                      var shangsheng = res.sort(function(a,b){
                    return a.price-b.price;
                 })
                       console.log(shangsheng);//升序之后得到的数组
                         xuanran.append(shangsheng.map(function(item){
                      // console.log(item.id);
                      return '<li class="item firstrow"><img style="height:200px;width:200px;"src="'+ item.imgurl +'">'+'<a class="s_l_name" href="xiangqingye.html?shopId='+item.id+'">'+item.shoptietle+'</a>'
                      +'<p class="ziti"><strong>最新上架：￥'+item.price+'</strong></p></li>'
                  }));

                })
                

              }
          })
         

    })


   




      //  $("h4").click(function(){
      //              console.log(8888)
      //            res.sort(function(a,b){
      //               return a.price-b.price;
      //               console.log(res);
      //      })
      // })
