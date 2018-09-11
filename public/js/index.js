$(function(){
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json"
    })
    .then(slider=>{
        /*slider*/
        var html="";
        for(var {pic,href,fname,fdate,cinema} of slider){
            html+=`<li>
                    <div>
                        <a href="${href}" target="_blank">
                            <img src="${pic}">
                            <p class="fname">${fname}</p>
                        </a>
                        <a href="cinemas.html" target="_blank" class="bottom">
                            <p class="fdate">${fdate}</p>
                            <p class="fcinema">${cinema}</p>
                        </a>
                    </div>
                </li>`;}
        document.querySelector("div.slider-1>ul").innerHTML=html;

    })
})
/*navbar导航栏*/
var $parent= $("nav.home").children(":nth-child(2)");
$parent.on("mouseover","li",function(e){
    e.preventDefault();
    $(this).addClass("active")
        .siblings().removeClass("active");
});
/*banner轮播图*/
var n=1;
var timer=function carousel(){
        var html="";
        if(4>n>0){n++;}
        else{n=1;}
        html=`<img src="http://127.0.0.1:3000/img/banner/banner${n}.jpg"/>`;

        document.querySelector("div.inner").innerHTML=html;
    }
setInterval(timer,3000);

var $img=$("div.inner>img");
$("ul.indicator>li").mouseover(function () {
    var $btn=$(this);
    var src=$btn.attr("data-target")
    $img.attr("src",src);
    $btn.addClass("active")
        .siblings()
        .removeClass("active");
});



