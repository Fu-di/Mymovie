$(function(){
    $.ajax({
        url:"http://localhost:3000/footer.html",
        type:"get",
        success:function(res){
            document.getElementById("footer")
                .innerHTML=res;
        }
    })//jq 1.x  2.x 不能用then！
})