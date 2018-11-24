jQuery(function(){
   // 轮播图
    $(".banner").lmCarousel({
                            imgs:["images/ban.jpg","images/ban1.jpg","images/ban2.jpg","images/ban3.jpg","images/ban4.jpg"],
                            duration:2000,
                            type : 'fade'
                        });
// nav点击出现和消失
  $("h4").click(function(){
      $(".category-menus").css("display","block");$(this).click(function(){$(".category-menus").css("display","none")});
  })

  // 鼠标悬停时图片样式left:-6px;
   $(".move").on("mouseover",function(){$(this).css("left","-8px")}).on("mouseout",function(){$(this).css("left","0px")})

//xiaoren
  $(".xiaoren").on("mouseover",function(){$(".rtbar-mbrcenter").css("display","block")}).on("mouseout",function(){$(".rtbar-mbrcenter").css("display","none")})
   

// 右边图标
   // $(".rtbar-icon").on("mouseover",function(){$(this).next().css({"opacity":"1","right":"35px"})})

   $(".rtbar-icon").on("mouseover",function(){
        $(".rtbar-hint").animate({right:"35px",opacity:"1"},function(){
          $(this).on("mouseout",function(){
           $(".rtbar-hint").animate({right:"75px",opacity:"0"});
        });
        });




        
   })
     





})