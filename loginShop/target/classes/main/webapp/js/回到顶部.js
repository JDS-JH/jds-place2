var backImg=document.querySelector(".back-top");
window.onscroll=function() {
        if (document.documentElement.scrollTop > 200) {
            backImg.style.display = "block";
        } else {
            backImg.style.display = "none";
        }
    };
backImg.onclick=function() {
    var timer=setInterval(function () {
        var scrollTop=document.documentElement.scrollTop;
        var sd=scrollTop/10;
        console.log(sd);
        if(scrollTop==0){
            clearInterval(timer);
        }
        document.documentElement.scrollTop=scrollTop-sd;
    },10);
};