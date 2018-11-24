$(function(){
  //获取url中的参数
  function getUrlParam(name) {
   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
   var r = window.location.search.substr(1).match(reg); //匹配目标参数
   // console.log(r);
   if (r != null) return unescape(r[2]); return null; //返回参数值
  }
  //接收URL中的参数shopId
  var id = getUrlParam('ids');
    console.log(id);
     $.ajax({
         url: '../api/goodlist.php',
         type: 'get',
         dataType: 'json',
         data: {},
         success:function(res){
            console.log(res);
            res.map(function(item){
                // console.log(item.id);
                if(id == item.id){
                              
              //   var str='<ul class="order_lists">'
              //   +'<li class="list_chk">'
              //   +'<input type="checkbox" id="checkbox_2" class="son_check">'

              //   +'<label for="checkbox_2">'
              //   +'</label>'
              //   +'</li>'
              //   +'<li class="list_con">'
              //   +'<div class="list_img">'
              //   +'<a >'
              //   +'<img src='+item.imgurl+'>'
              //   +'</a>'
              //   +'</div>'
              //   +'<div class="list_text">'
              //   +'<a>'+item.shoptietle+'</a>'
              //   +'</div>'
              //   +'</li>'
              //   +'<li class="list_info">'
              //   +'<p>规格：默认</p>'
              //   +'<p>尺寸：16*16*3(cm)</p>'
              //   +'</li>'
              //   +'<li class="list_price">'
              //   +'<p class="price">￥'+item.price+'</p>'
              //   +'</li>'
              //   +'<li class="list_amount">'
              //   +'<div class="amount_box">'
              //     +'<a href="javascript:;" class="reduce reSty">-</a>'
              //     +'<input type="text" value="1" class="sum">'
              //     +'<a href="javascript:;" class="plus">+</a>'
              //   +'</div>'
              //   +'</li>'
              //   +'<li class="list_sum">'
              //   +'<p class="sum_price">￥'+item.price+'</p>'
              //   +'</li>'
              //   +'<li class="list_op">'
              //   +'<p class="del">'
              //     +'<a href="javascript:;" class="delBtn">移除商品</a>'
              //   +'</p>'
              //   +'</li>'
              // +'</ul>'
              //   $(".order_content").append(str);   
              //=============================
               var str = "<a ><img src='"+item.imgurl+"'></a>";
                 $(".list_img").append(str);  
                 var  ziti ="<a>"+item.shoptietle+"</a>";
                 $(".list_text").append(ziti);
                 var price ='<p class="price" >￥'+item.price+'</p>';
                 $(".list_price").append(price); 
                 var price2 = '<p class="sum_price">￥'+item.price+'</p>' ;
                  $(".list_sum").append(price2);
                  var shopname ='<div class="shop_name">'+
                                    '店铺：'+'<a href="javascript:;">'+item.where+'</a>'
                                +'</div>';
                  $(".shop_info").append(shopname);

                }
            })
         }
     })
     
                   // $(".btn_sty").click(function(){console.log(999)});
  
     
})
