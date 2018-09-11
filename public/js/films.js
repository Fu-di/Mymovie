$(function(){
    $(".subnav>.navbar>li").on("click","a",function(e){
        e.preventDefault();
        //location.href=$(this).attr("href");
        $(this).addClass("active")
                .parent().siblings()
                .children().removeClass("active");
    })
})

