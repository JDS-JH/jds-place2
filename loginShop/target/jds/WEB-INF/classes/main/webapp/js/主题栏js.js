var ztl=document.querySelector(".ztl");
var zd=document.querySelector(".zd");
var nr=document.querySelector(".nr");


var ztlul=document.getElementById('ztlUl').getElementsByTagName('li');
var img=document.getElementById('ztlUl').getElementsByTagName('img');
/*console.log(ztlul[1].innerText);
console.log(ztlul[0]);*/
console.log(img[0]);
console.log(img[1].src);
for(let i=0;i<=13;i++){
    ztlul[i].onmouseover=function () {
        zd.style.display="block";
        var oImg =document.createElement("img");
        oImg.style.height='400px';
        oImg.style.width='500px';
        oImg.src=img[i].src;
        nr.innerHTML="这里是"+ztlul[i].innerHTML;
        nr.appendChild(oImg);
    }
}
zd.onmouseout=function () {
    zd.style.display="none";
};
nr.onmouseover=function () {
    zd.style.display="block";
};