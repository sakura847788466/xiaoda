$(function(){
  //获取url中的参数
  function getUrlParam(name) {
   var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
   var r = window.location.search.substr(1).match(reg); //匹配目标参数
   // console.log(r);
   if (r != null) return unescape(r[2]); return null; //返回参数值
  }
  //接收URL中的参数shopId
  var id = getUrlParam('shopId');
    console.log(id);
    $.ajax({
        url: '../api/goodlist.php',
        type: 'get',
        dataType: 'json',
        async: true,
        data: {},
    success:function(res){
          // console.log(res);
        res.map(function(item){
            // console.log(item.id);
            // console.log(item.imgurl);
            if(id ==item.id){
                  var str = "<img src='"+item.imgurl+"'>";
                $(".jqzoom").append(str);  
                // console.log(999); 
                var ziti ="<b>"+item.shoptietle+"</b>";
                $(".title").append(ziti);
                $(".dianming").append(ziti);
                var price =item.price;
                $(".mall_price").append(price);
                var dian =item.where;
                $(".dian").append(dian);
                console.log(item);

                $(".btn-addcart").click(function(){
                    alert("添加到购物车成功");
                    var id = item.id
                     var imgurl = item.imgurl;
                     var shoptietle = item.shoptietle;
                     var price = item.price;
                     var where = item.where;
                    console.log(id,imgurl,shoptietle,price,where);

                 //    $.ajax({
                 //     url: '../api/car.php',
                 //     type: 'get',
                 //     async:true,
                 //     dataType: 'json',
                 //     data: {
                 //            "id":id,
                 //            "imgurl":imgurl,
                 //            // "shoptietle":shoptietle,
                 //            // "price":price,
                 //            // "where":where
                 //        },
                 //     success:function(res){
                 //      console.log(res);
                 //     }
                 // })
                 $(this).attr("href",`http://localhost/parttwo/html/gouwuche.html?ids=${id}`)

               })
             
            }

        })
    }
    })
    
    
})


