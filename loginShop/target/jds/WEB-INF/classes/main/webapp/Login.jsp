<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=gb2312" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link href="登录/css/login.css" rel="stylesheet" type="text/css"> <!--跳转到login 样式表-->
    <script type="text/javascript" src="js/jquery-3.5.1/jquery-3.5.1.min.js"></script>

</head>
<body>
<form action="UserServlet" method="post">
    <input type="hidden" name="action" value="Login">
    <div class="middle"> <!-- 将此div 居中-->
        <div class="contain">  <!--适应适合背景区域的最大大小-->
            <div class="top-contain"> <!--置顶-->
            <h3>登录</h3>
            <a href="register.jsp">立即注册</a>    <!--注册界面-->
            </div>
            <div class="login-contain">
                <input type="text" id="username" name="username" placeholder="请输入用户名" ><br> <!--文本框之后br换行-->
                <input type="password" id="password" name="password" placeholder="请输入密码" ><br>
                <button class="sub">登录</button>
            </div>
        </div>
    </div>
</form>
</body>
<%--<script type="text/javascript">
    var var1 ='<%=request.getParameter("var1")%>';
    if(var1=='yes'){
        alert("密码或者账号名登录失败!");
    }
</script>--%>
</html>
