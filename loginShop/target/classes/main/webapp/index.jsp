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
    <link href="css/商品展示box3.css" rel="stylesheet" type="text/css">
    <link href="css/牛气冲天css.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.5.1/jquery-3.5.1.min.js"></script>

</head>
<body>

<div class="box">
    <div class="A" style="display: flex;justify-content: space-around">
        <img class="cd" style="width: 30px;height: 30px" src="./Allimg/叉%20.svg" alt="">
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/牛.jpg" alt="牛">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/年.jpg" alt="年">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/气.jpg" alt="气">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/终.jpg" alt="终">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/冲.jpg" alt="冲">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/盛.jpg" alt="盛">
            </div>
        </div>
        <div class="B">
            <div class="front">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/天.jpg">
            </div>
            <div class="back">
                <img style="width: 60px;height: 60px;border-radius: 30px;" src="./轮播图img/img/典.jpg">
            </div>
        </div>
    </div>
    <div class="back-top"><img src="./Allimg/置顶.svg" alt=""></div>
    <div class="tz1"><a href="#a">特色优选</a></div>
    <div class="tz2"><a href="#b">频道广场</a></div>
    <div class="tz3"><a href="#c">为你推荐</a></div>
    <div class="topP">
        <img id="topimg" src="./Allimg/新春1.jpg" style="width: 100%;height: 100px;position: relative">
        <img id="cha" src="./Allimg/叉%20.svg" style="height: 30px;width: 30px;position: absolute;z-index: 1;right: 0;top: 10px">
        <nav class="navbar navbar-inverse" style="margin-bottom: 0px">
            <div class="container-fluid">
                <div class="visible-xs navbar-toggle collapsed" ><a href="#">我的购物车</a></div>
                <div class="navbar-header ">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" style="padding: 0px"><img src="./Allimg/淘宝logo.jpg" alt="" style="height: 50px;width: 50px;"></a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <c:if test="${empty sessionScope}">
                    <ul class="nav navbar-nav">
                        <li><a href="Login.jsp">欢迎来到淘宝，请登录</a></li>
                    </ul>
                    </c:if>
                    <c:if test="${ not empty sessionScope}">
                        <ul class="nav navbar-nav">
                            <li><a href="Login.jsp">欢迎!${sessionScope.reader.name}</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">已经卖出的商品</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">已买到的商品</a></li>
                                </ul>
                            </li>
                        </ul>
                    </c:if>

                    <ul class="nav navbar-nav navbar-right"  >
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" id="dw" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" onclick="qh()">重庆<span class="caret"></span></a>
                            <ul class="dropdown-menu" id="listdw">
                                <li><a id="1" onclick="qh(event)">北京</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a id="2" onclick="qh(event)">武汉</a></li>
                                <li><a id="3" onclick="qh(event)">杭州</a></li>
                                <li><a id="4" onclick="qh(event)">长沙</a></li>
                                <li><a id="5" onclick="qh(event)">昆明</a></li>
                                <li><a id="6" onclick="qh(event)">广州</a></li>
                                <li><a id="7" onclick="qh(event)">哈尔滨</a></li>
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
        <img src="dimg/皮卡丘.gif" style="width: 100px;height: 100px" class="pkq hidden-xs">
        <form action="http://www.baidu.com">
            <input class="ssk" type="text" style="width: 300px;height: 38px;margin-top: 30px"><button><img id="img2" src="./Allimg/搜索.svg"></button>
        </form>
            <div class="gwc hidden-xs">
                <img  src="Allimg/购物车.svg" style="height: 30px;width: 30px;margin-left: -20px">
                <a>我的购物车</a>
            </div>
                <div class="box-1 hidden-xs">
                        <h3 style="font-family: yy">新年抢购倒计时</h3>
                    <span id="t_d"></span>
                    <span id="t_h"></span>
                    <span id="t_m"></span>
                    <span id="t_s"></span>
                </div>

            <div class="nav-nav">
                <ul>
                    <li><a href="">爱丽丝</a></li>
                    <li><a href="">换季必备</a></li>
                    <li><a href="">红米手机</a></li>
                    <li><a href="">0元义诊</a></li>
                    <li><a href="">5折封顶</a></li>
                    <li><a href="">电脑数码</a></li>
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
                <li><a>家用电器</a><img style="display: none" src="./主题图片/冰箱.jpg" alt=""></li>
                <li><a>手机/运营商/数码</a><img style="display: none" src="主题图片/手机.jfif"></li>
                <li><a>电脑/办公</a><img style="display: none" src="主题图片/电脑.jfif" alt=""></li>
                <li><a>家具/家装/厨具</a><img style="display: none" src="主题图片/家具.jpg" alt=""></li>
                <li><a>美妆/个护清洁/宠物</a><img style="display: none" src="轮播图img/img/化妆刷8.jpg" alt=""></li>
                <li><a>女鞋/箱包/钟表</a><img style="display: none" src="主题图片/箱包.jpg"></li>
                <li><a>图书/文娱/教育/电子书</a><img style="display: none" src="主题图片/图书.jfif"></li>
                <li><a>机票/酒店/旅游/生活</a><img style="display: none" src="主题图片/酒店.jpg" alt=""></li>
                <li><a>食品/酒类/生鲜</a><img style="display: none" src="主题图片/酒店.jpg" alt=""></li>
                <li><a>艺术/礼品鲜花</a><img style="display: none" src="主题图片/鲜花.jpg" alt=""></li>
                <li><a>理财/众筹/白条/保险</a><img style="display: none" src="主题图片/理财.jpg" alt=""></li>
                <li><a>安装/维修/清洗/二手</a><img style="display: none" src="主题图片/二手.jfif" alt=""></li>
                <li><a>游戏/电卷/赛事</a><img style="display: none" src="主题图片/游戏.jpg" alt=""></li>
                <li><a>玩具/乐器</a><img style="display: none" src="主题图片/玩具.jfif"></li>
            </ul>
        </div>
        <div class="lbt">
            <img  class="you" src="./轮播图img/jiantou/轮播右翻滚%20(1).svg" alt="">
            <img  class="zuo" src="./轮播图img/jiantou/轮播左翻滚%20(1).svg" alt="">
            <div class="lbt-item" style="left: -500px">
                <img src="./轮播图img/img/大牌美妆节.jpg">
                <img src="./轮播图img/img/服装女.jpg">
                <img src="./轮播图img/img/美妆蛋.jpg">
                <img src="./轮播图img/img/秒杀满减.jpg">
            </div>
            <div class="right-img">
                <img src="./轮播图img/img/vivox50手机壳.jpg">
                <img src="./轮播图img/img/GIVENCHY纪梵希.jpg" alt="">
                <img src="./轮播图img/img/力士.jpg" alt="">
            </div>
        </div>

        <div class="js">
            <div class="right-top">
                <img style="height: 50px;margin: 5px 5px;width: 50px;border-radius: 50%" src="./轮播图img/img/头像.jpg" alt="">
                <p>Hi～欢迎光临京西!</p>
                <c:if test="${not empty sessionScope.reader}">
                    <ul>
                        <li><a>${sessionScope.reader.username}</a></li>
                        <li><a  href="/UserServlet?action=LoginOut">注销</a></li>
                    </ul>
                </c:if>
                <c:if test="${empty sessionScope.reader}">
                    <ul>
                        <li><a href="Login.jsp">请登录</a></li>
                        <li><a href="register.jsp">注册</a></li>
                    </ul>
                </c:if>

                <button style="height: 30px;width: 80px;margin-right: 15px;margin-left: 10px" type="button" class="btn btn-danger">新人福利</button>
                <button style="height: 30px;width: 80px" type="button" class="btn btn-success">PLUS会员</button>
            </div>

            <div class="right-center">
                <a style="float: right">更多&nbsp;></a>
                <h4>京西快报</h4>
                <ul>
                    <li><a>2020年度TWS真无线蓝...</a></li>
                    <li><a>冬天室内太干燥了，加...</a></li>
                    <li><a>告别线圈缠绕，森海塞...</a></li>
                    <li><a>雅俗共赏，一场从沙发...</a></li>
                </ul>
            </div>

            <div class="right-button">
                <div class="right-button-img">
                    <div class="right-button-img-1"><span>我的</span><img src="./Allimg/我的.svg"></div>
                    <div class="right-button-img-1"><span>设置</span><img src="./Allimg/设置.svg"></div>
                    <div class="right-button-img-1"><span>钱包</span><img src="./Allimg/钱包.svg"></div>
                    <div class="right-button-img-1"><span>任务</span><img src="./Allimg/任务.svg"></div>
                    <div class="right-button-img-1"><span>游戏</span><img src="./Allimg/游戏.svg"></div>
                    <div class="right-button-img-1"><span>电影票</span><img src="./Allimg/电影票.svg"></div>
                    <div class="right-button-img-1"><span>购物车</span><img src="./Allimg/购物车.svg"></div>
                    <div class="right-button-img-1"><span>更多</span><img src="./Allimg/更多.svg"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="box3">
        <!--<div class="container" style="padding-left: 0">-->
        <h1 class="ts-bt" id="a" style="font-family: '标题'">特色优选</h1>
        <div class="ts">
            <div class="ts-wz"><p><br/><br/>价值$5000<br/>mila owen2020年秋冬季中长款大翻领纯色大衣外套09WFC204103-2400</p><img src="轮播图img/img/mila%20owen大衣.jpg"></div>
            <div class="ts-wz"><p><br/><br/>价值$5000<br/>短句先生拼色羊羔毛绒棉衣外套男秋冬韩版宽松百搭炸街加厚外套女</p><img src="轮播图img/img/拼色羊羔毛绒棉衣.jpg"></div>
            <div class="ts-wz"><p><br/><br/>价值$5000<br/>FRUITY韩版ins复古麂皮绒羊羔毛棉衣外套女冬季立领加厚学生棉服</p><img src="轮播图img/img/女装冬季.jpg"></div>
            <div class="ts-wz"><p><br/><br/>价值$5000<br/>漫步者Lolipods有心款蓝牙耳机半入耳式真无线双耳降噪运动女生款可爱适用于苹果小米lollipops安卓</p><img src="轮播图img/img/漫步者.jpg"></div>
        </div>
        <!--</div>-->
        <div class="PD ">
        <h1 class="pd-bt" id="b" style="font-family: '标题'">频道广场</h1>
        <div class="pd">
 <!--           <video style="height: 350px;width: 300px;z-index: 5"  controls="controls" >
                <source src="./video/1608711117797.mp4" type="video/mp4">
            </video>-->
            <img  class="pd-big" src="轮播图img/img/MARYLING玛俪琳大衣.jpg" style="height: 350px;width: 300px" >
            <div class="pd-img">
                <div class="pd-img-1">
                <img src="./轮播图img/img/相宜本草.jpg" alt="">
                <img src="./轮播图img/img/美妆蛋.jpg" alt="">
                <img src="./轮播图img/img/特价芦荟.jpg" alt="">
                <img src="./轮播图img/img/GIVENCHY纪梵希.jpg" alt="">
                    <img src="./轮播图img/img/化妆刷8.jpg" alt="">
                    <img src="./轮播图img/img/大牌美妆节.jpg" alt="">
                </div>
            </div>
        </div>
        </div>
        <div class="TJ">
        <hr/>
        <h1 class="tj-bt" id="c" style="font-family: '标题'">为你推荐</h1>
        <div class="tj">
            <img src="./Allimg/飞鹤奶粉.jpg/" alt="">
            <img src="./Allimg/奶瓶.jpg" alt="">
            <img src="./Allimg/尿不湿.jpg" alt="">
            <img src="./轮播图img/img/羊羔毛.jpg" alt="">
        </div>
        </div>
        <div class="foot">


            <p>京西客户端官网 | 关于我们 | 意见反馈 | 商家举报 | 产品论坛 | 使用帮助 | 推广合作 | 官方微信 |</p>
    </div>

    </div>

</div>
<script src="js/TopNav.js"></script>
<script src="js/轮播图.js"></script>
<script src="js/主题栏js.js"></script>
<script src="js/回到顶部.js"></script>
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

        document.getElementById("t_d").innerHTML = d + " 天";	document.getElementById("t_d").style.fontFamily='yy';
        document.getElementById("t_h").innerHTML = h + " 时";	document.getElementById("t_h").style.fontFamily='yy';
        document.getElementById("t_m").innerHTML = m + " 分";		document.getElementById("t_m").style.fontFamily='yy';
        document.getElementById("t_s").innerHTML = s + " 秒";		document.getElementById("t_s").style.fontFamily='yy';
    }
    setInterval(getNTime, 1000);
</script>
</body>
</html>