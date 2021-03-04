var dw=document.getElementById('dw');
var listdw=document.getElementById('listdw');
var cha=document.getElementById('cha');
cha.onclick=function () {
    var topimg=document.getElementById('topimg');
    topimg.style.display="none";
    cha.style.display='none';
};
function qh(e) {
    console.log(e);
    var ee=e.target.id;
    var eee=Number(ee);
    console.log(typeof eee);
    var id="'"+eee+"'";
    var nr=document.getElementById(id);
    console.log(nr);
}

