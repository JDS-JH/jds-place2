    var tp=document.querySelector('.lbt-item');
    var zuo=document.querySelector(".zuo");
    var you=document.querySelector(".you");
    console.log(tp.style);

    function zuoImg(){
        var newLeft;
        if(tp.style.left==='-1500px'){
            newLeft=0;
            tp.style.left=newLeft+"px";
        }else{
             newLeft=parseInt(tp.style.left)-500;
            tp.style.left=newLeft+"px";
        }
    }

    function youImg() {
        var newLeft;
        if(tp.style.left==='0px'){
            newLeft=-1500;
            tp.style.left=newLeft+"px";
        }else{
            newLeft=parseInt(tp.style.left)+500;
            tp.style.left=newLeft+"px";
        }
    }
zuo.onclick=function (){
    zuoImg();
    console.log(tp.style.left);
};
    
you.onclick=function () {
    youImg();
    console.log(tp.style.left);
};
var t=null;
function bf() {
        t=setInterval(function () {
        zuoImg();
    },2000)
}
bf();
    you.onmouseover=function () {
        clearInterval(t)
    };
    zuo.onmouseover=function () {
        clearInterval(t)
    };
tp.onmouseover=function () {
    clearInterval(t)
};
tp.onmouseleave=function(){
    bf();
};