<!DOCTYPE html>
<%@ page contentType="text/html;charset=gb2312" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="css/TopNav.css" rel="stylesheet" type="text/css">
    <link href="css/TopNav.css" rel="stylesheet" type="text/css">
    <link href="css/ZJ.css" rel="stylesheet" type="text/css">
    <link href="css/foot.css" rel="stylesheet" type="text/css">
    <link href="css/��Ʒչʾbox3.css" rel="stylesheet" type="text/css">
    <link href="css/ţ������css.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.5.1/jquery-3.5.1.min.js"></script>

</head>
<body>

<div class="box">
    <div class="A" style="display: flex;justify-content: space-around">
        <img class="cd" style="width: 30px;height: 30px" src="./Allimg/��%20.svg" alt="">
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/ţ.jpg" alt="ţ">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg" alt="��">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg" alt="��">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg" alt="��">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg" alt="��">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/ʢ.jpg" alt="ʢ">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./�ֲ�ͼimg/img/��.jpg">
            </div>
        </div>
    </div>
    <div class="back-top"><img src="./Allimg/�ö�.svg" alt=""></div>
    <div class="tz1"><a href="#a">��ɫ��ѡ</a></div>
    <div class="tz2"><a href="#b">Ƶ���㳡</a></div>
    <div class="tz3"><a href="#c">Ϊ���Ƽ�</a></div>
    <div class="topP">
        <img id="topimg" src="./Allimg/�´�1.jpg" style="width: 100%;height: 100px;position: relative">
        <img id="cha" src="./Allimg/��%20.svg" style="height: 30px;width: 30px;position: absolute;z-index: 1;right: 0;top: 10px">
        <nav class="navbar navbar-inverse" style="margin-bottom: 0px">
            <div class="container-fluid">
                <div class="visible-xs navbar-toggle collapsed" ><a href="#">�ҵĹ��ﳵ</a></div>
                <div class="navbar-header ">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="padding: 0px"><img src="./Allimg/�Ա�logo.jpg" alt="" style="height: 50px;width: 50px;"></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <c:if test="${empty sessionScope}">
                    <ul class="nav navbar-nav">
                        <li><a href="Login.jsp">��ӭ�����Ա������¼</a></li>
                    </ul>
                    </c:if>
                    <c:if test="${ not empty sessionScope}">
                        <ul class="nav navbar-nav">
                            <li><a href="Login.jsp">��ӭ!${sessionScope.reader.name}</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">�ҵ�<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">�Ѿ���������Ʒ</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">���򵽵���Ʒ</a></li>
                                </ul>
                            </li>
                        </ul>
                    </c:if>

                    <ul class="nav navbar-nav navbar-right"  >
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" id="dw" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" onclick="qh()">����<span class="caret"></span></a>
                            <ul class="dropdown-menu" id="listdw">
                                <li><a id="1" onclick="qh(event)">����</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a id="2" onclick="qh(event)">�人</a></li>
                                <li><a id="3" onclick="qh(event)">����</a></li>
                                <li><a id="4" onclick="qh(event)">��ɳ</a></li>
                                <li><a id="5" onclick="qh(event)">����</a></li>
                                <li><a id="6" onclick="qh(event)">����</a></li>
                                <li><a id="7" onclick="qh(event)">������</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="nav2">
        <div class="container">
        <div class="row ss">
        <img src="dimg/Ƥ����.gif" style="width: 100px;height: 100px" class="pkq hidden-xs">
        <form action="http://www.baidu.com">
            <input class="ssk" type="text" style="width: 300px;height: 38px;margin-top: 30px"><button><img id="img2" src="./Allimg/����.svg"></button>
        </form>
            <div class="gwc hidden-xs">
                <img  src="Allimg/���ﳵ.svg" style="height: 30px;width: 30px;margin-left: -20px">
                <a>�ҵĹ��ﳵ</a>
            </div>
                <div class="box-1 hidden-xs">
                        <h3 style="font-family: yy">������������ʱ</h3>
                    <span id="t_d"></span>
                    <span id="t_h"></span>
                    <span id="t_m"></span>
                    <span id="t_s"></span>
                </div>

            <div class="nav-nav">
                <ul>
                    <li><a href="">����˿</a></li>
                    <li><a href="">�����ر�</a></li>
                    <li><a href="">�����ֻ�</a></li>
                    <li><a href="">0Ԫ����</a></li>
                    <li><a href="">5�۷ⶥ</a></li>
                    <li><a href="">��������</a></li>
                </ul>
            </div>
        </div>
        </div>
    </div>
    <div class="box2">
        <div class="zd">
            <div class="nr"></div>
        </div>
        <div class="ztl">
            <ul id="ztlUl">
                <li><a>���õ���</a><img style="display: none" src="./����ͼƬ/����.jpg" alt=""></li>
                <li><a>�ֻ�/��Ӫ��/����</a><img style="display: none" src="����ͼƬ/�ֻ�.jfif"></li>
                <li><a>����/�칫</a><img style="display: none" src="����ͼƬ/����.jfif" alt=""></li>
                <li><a>�Ҿ�/��װ/����</a><img style="display: none" src="����ͼƬ/�Ҿ�.jpg" alt=""></li>
                <li><a>��ױ/�������/����</a><img style="display: none" src="�ֲ�ͼimg/img/��ױˢ8.jpg" alt=""></li>
                <li><a>ŮЬ/���/�ӱ�</a><img style="display: none" src="����ͼƬ/���.jpg"></li>
                <li><a>ͼ��/����/����/������</a><img style="display: none" src="����ͼƬ/ͼ��.jfif"></li>
                <li><a>��Ʊ/�Ƶ�/����/����</a><img style="display: none" src="����ͼƬ/�Ƶ�.jpg" alt=""></li>
                <li><a>ʳƷ/����/����</a><img style="display: none" src="����ͼƬ/�Ƶ�.jpg" alt=""></li>
                <li><a>����/��Ʒ�ʻ�</a><img style="display: none" src="����ͼƬ/�ʻ�.jpg" alt=""></li>
                <li><a>���/�ڳ�/����/����</a><img style="display: none" src="����ͼƬ/���.jpg" alt=""></li>
                <li><a>��װ/ά��/��ϴ/����</a><img style="display: none" src="����ͼƬ/����.jfif" alt=""></li>
                <li><a>��Ϸ/���/����</a><img style="display: none" src="����ͼƬ/��Ϸ.jpg" alt=""></li>
                <li><a>���/����</a><img style="display: none" src="����ͼƬ/���.jfif"></li>
            </ul>
        </div>
        <div class="lbt">
            <img  class="you" src="./�ֲ�ͼimg/jiantou/�ֲ��ҷ���%20(1).svg" alt="">
            <img  class="zuo" src="./�ֲ�ͼimg/jiantou/�ֲ��󷭹�%20(1).svg" alt="">
            <div class="lbt-item" style="left: -500px">
                <img src="./�ֲ�ͼimg/img/������ױ��.jpg">
                <img src="./�ֲ�ͼimg/img/��װŮ.jpg">
                <img src="./�ֲ�ͼimg/img/��ױ��.jpg">
                <img src="./�ֲ�ͼimg/img/��ɱ����.jpg">
            </div>
            <div class="right-img">
                <img src="./�ֲ�ͼimg/img/vivox50�ֻ���.jpg">
                <img src="./�ֲ�ͼimg/img/GIVENCHY����ϣ.jpg" alt="">
                <img src="./�ֲ�ͼimg/img/��ʿ.jpg" alt="">
            </div>
        </div>

        <div class="js">
            <div class="right-top">
                <img style="height: 50px;margin: 5px 5px;width: 50px;border-radius: 50%" src="./�ֲ�ͼimg/img/ͷ��.jpg" alt="">
                <p>Hi����ӭ���پ���!</p>
                <c:if test="${not empty sessionScope.reader}">
                    <ul>
                        <li><a>${sessionScope.reader.username}</a></li>
                        <li><a  href="/UserServlet?action=LoginOut">ע��</a></li>
                    </ul>
                </c:if>
                <c:if test="${empty sessionScope.reader}">
                    <ul>
                        <li><a href="Login.jsp">���¼</a></li>
                        <li><a href="register.jsp">ע��</a></li>
                    </ul>
                </c:if>

                <button style="height: 30px;width: 80px;margin-right: 15px;margin-left: 10px" type="button" class="btn btn-danger">���˸���</button>
                <button style="height: 30px;width: 80px" type="button" class="btn btn-success">PLUS��Ա</button>
            </div>

            <div class="right-center">
                <a style="float: right">����&nbsp;></a>
                <h4>�����챨</h4>
                <ul>
                    <li><a>2020���TWS��������...</a></li>
                    <li><a>��������̫�����ˣ���...</a></li>
                    <li><a>�����Ȧ���ƣ�ɭ����...</a></li>
                    <li><a>���׹��ͣ�һ����ɳ��...</a></li>
                </ul>
            </div>

            <div class="right-button">
                <div class="right-button-img">
                    <div class="right-button-img-1"><span>�ҵ�</span><img src="./Allimg/�ҵ�.svg"></div>
                    <div class="right-button-img-1"><span>����</span><img src="./Allimg/����.svg"></div>
                    <div class="right-button-img-1"><span>Ǯ��</span><img src="./Allimg/Ǯ��.svg"></div>
                    <div class="right-button-img-1"><span>����</span><img src="./Allimg/����.svg"></div>
                    <div class="right-button-img-1"><span>��Ϸ</span><img src="./Allimg/��Ϸ.svg"></div>
                    <div class="right-button-img-1"><span>��ӰƱ</span><img src="./Allimg/��ӰƱ.svg"></div>
                    <div class="right-button-img-1"><span>���ﳵ</span><img src="./Allimg/���ﳵ.svg"></div>
                    <div class="right-button-img-1"><span>����</span><img src="./Allimg/����.svg"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="box3">
        <!--<div class="container" style="padding-left: 0">-->
        <h1 class="ts-bt" id="a" style="font-family: '����'">��ɫ��ѡ</h1>
        <div class="ts">
            <div class="ts-wz"><p><br/><br/>��ֵ$5000<br/>mila owen2020���ﶬ���г�����촿ɫ��������09WFC204103-2400</p><img src="�ֲ�ͼimg/img/mila%20owen����.jpg"></div>
            <div class="ts-wz"><p><br/><br/>��ֵ$5000<br/>�̾�����ƴɫ���ë�������������ﶬ������ɰٴ�ը�ּӺ�����Ů</p><img src="�ֲ�ͼimg/img/ƴɫ���ë������.jpg"></div>
            <div class="ts-wz"><p><br/><br/>��ֵ$5000<br/>FRUITY����ins������Ƥ�����ë��������Ů��������Ӻ�ѧ���޷�</p><img src="�ֲ�ͼimg/img/Ůװ����.jpg"></div>
            <div class="ts-wz"><p><br/><br/>��ֵ$5000<br/>������Lolipods���Ŀ��������������ʽ������˫�������˶�Ů����ɰ�������ƻ��С��lollipops��׿</p><img src="�ֲ�ͼimg/img/������.jpg"></div>
        </div>
        <!--</div>-->
        <div class="PD ">
        <h1 class="pd-bt" id="b" style="font-family: '����'">Ƶ���㳡</h1>
        <div class="pd">
 <!--           <video style="height: 350px;width: 300px;z-index: 5"  controls="controls" >
                <source src="./video/1608711117797.mp4" type="video/mp4">
            </video>-->
            <img  class="pd-big" src="�ֲ�ͼimg/img/MARYLING��ٳ�մ���.jpg" style="height: 350px;width: 300px" >
            <div class="pd-img">
                <div class="pd-img-1">
                <img src="./�ֲ�ͼimg/img/���˱���.jpg" alt="">
                <img src="./�ֲ�ͼimg/img/��ױ��.jpg" alt="">
                <img src="./�ֲ�ͼimg/img/�ؼ�«��.jpg" alt="">
                <img src="./�ֲ�ͼimg/img/GIVENCHY����ϣ.jpg" alt="">
                    <img src="./�ֲ�ͼimg/img/��ױˢ8.jpg" alt="">
                    <img src="./�ֲ�ͼimg/img/������ױ��.jpg" alt="">
                </div>
            </div>
        </div>
        </div>
        <div class="TJ">
        <hr/>
        <h1 class="tj-bt" id="c" style="font-family: '����'">Ϊ���Ƽ�</h1>
        <div class="tj">
            <img src="./Allimg/�ɺ��̷�.jpg/" alt="">
            <img src="./Allimg/��ƿ.jpg" alt="">
            <img src="./Allimg/��ʪ.jpg" alt="">
            <img src="./�ֲ�ͼimg/img/���ë.jpg" alt="">
        </div>
        </div>
        <div class="foot">


            <p>�����ͻ��˹��� | �������� | ������� | �̼Ҿٱ� | ��Ʒ��̳ | ʹ�ð��� | �ƹ���� | �ٷ�΢�� |</p>
    </div>

    </div>

</div>
<script src="js/TopNav.js"></script>
<script src="js/�ֲ�ͼ.js"></script>
<script src="js/������js.js"></script>
<script src="js/�ص�����.js"></script>
<script>
    var cd=document.querySelector(".cd");
    var niu=document.querySelector(".A");
    cd.onclick=function () {
        niu.style.display='none';
    }
</script>
<script type="text/javascript">

function getNTime() {
        var EndTime = new Date("2021/01/01 00:00:00");
        var NowTime = new Date();
        var t = EndTime.getTime() - NowTime.getTime();
        var d = Math.floor(t / 1000 / 60 / 60 / 24);
        var h = Math.floor(t / 1000 / 60 / 60 % 24);
        var m = Math.floor(t / 1000 / 60 % 60);
        var s = Math.floor(t / 1000 % 60);

        document.getElementById("t_d").innerHTML = d + " ��";	document.getElementById("t_d").style.fontFamily='yy';
        document.getElementById("t_h").innerHTML = h + " ʱ";	document.getElementById("t_h").style.fontFamily='yy';
        document.getElementById("t_m").innerHTML = m + " ��";		document.getElementById("t_m").style.fontFamily='yy';
        document.getElementById("t_s").innerHTML = s + " ��";		document.getElementById("t_s").style.fontFamily='yy';
    }
    setInterval(getNTime, 1000);
</script>
</body>
</html>