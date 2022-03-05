$(function(){
    $(".cate ul").hide();
    $(".cate .menu .subopen").click(function(){
        if($(this).hasClass("active")){
            $(this).removeClass("active");
        }else {
            $(".accordion").find(".active").parent().next().toggle();
            $(".accordion").find(".active").removeClass("active");
            $(".cate ul li").toggle();
            $(this).parent().next().toggle('slow');
            $(this).addClass("active");
        }
    });
});



// ( function( $ ) {
//     $('.cate ul').hide();
//     $('.cate .menu .subopen').click(function() {
//          if($(this).hasClass('active')){
//              $(this).parent().next().slideUp('fast');
//              $(this).removeClass('active');
//         }else{
//             $('.accordion').find('.active').parent().next().slideUp('fast');
//             $('.accordion').find('.active').removeClass('active');
//             $(this).parent().next().slideDown('fast');
//             $(this).addClass('active');
//          }
//      });
//  });



