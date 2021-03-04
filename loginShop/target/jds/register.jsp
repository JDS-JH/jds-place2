<!DOCTYPE html>
<%@ page contentType="text/html;charset=gb2312" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link href="登录/css/regist.css" rel="stylesheet" type="text/css"> <!--regist样式表-->
    <script src="登录/js/regist.js" type="text/javascript" charset="UTF-8"></script>
    <script type="text/javascript" src="js/jquery-3.5.1/jquery-3.5.1.min.js"></script>
</head>
<body>

<div class="middle">
    <div class="contain" >
        <div class="top-contain">
            <h3 >注册</h3 >
            <a href="Login.jsp">立即登录</a>
        </div>

<script>
    function submit2() {
        var username = document.getElementById('username').value;
        var usernamelen=document.getElementById('username').value.length;
        var checkemail=document.getElementById('email').value;
        var password = document.getElementById('password').value;

        var passworda=document.getElementById('passworda').value;
        if(usernamelen<6){
            alert("用户名大于6位");
            return false;
        }
        var reg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[^]{8,16}$/;
        //
        // /^[a-zA-Z0-9]{4,10}$/
        // 正则表达式验证密码
        if(reg.test(password)==false){
            alert('密码至少包含一个大写字母,一个小写字母和一个数字,其他可以是任意字符,长度在8-16之间');
            return false;
        }
        else{
            if (password==passworda)
            {
                var ereg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|org|net)$/gi;;
                if(ereg.test(checkemail)==false){
                    alert('邮箱格式错误');
                    return false;
                }
                else{
                    return true;
                }
            }else{
                alert('两次输入的密码不一致');
                return false;
            }
        }
    }
</script>
        <form action="UserServlet" method="post">
            <input type="hidden" value="Register" name="action">
            <div class="regist-contain">
            <input type="hidden" name="action" value="Register">
            <input type="text" id="username" name="username" placeholder="请输入用户名:" value="<%= request.getAttribute("username")==null?"":request.getAttribute("username")%>"><br>
            <div>
                <h4 style="color:red;" id="exists"></h4>
            </div>
            <input type="text" id="password" name="password" placeholder="请输入密码" value="<%= request.getAttribute("password")==null?"":request.getAttribute("password")%>"><br>
            <input type="text" id="passworda" name="passworda" placeholder="请再次输入密码" value="<%= request.getAttribute("passworda")==null?"":request.getAttribute("passworda")%>"><br>
            <input type="email" id="email" name="email" placeholder="1234567890@163.com" value="<%= request.getAttribute("email")==null?"":request.getAttribute("email")%>"><br>
            <input type="text" id="age" name="tel" placeholder="请输入电话" value="<%= request.getAttribute("tel")==null?"":request.getAttribute("tel")%>">
            <input type="text" placeholder="请输入验证码" name="code"><img id="code_img" src="http://localhost:8080/kaptcha.jpg">
                <div>
                    <h4  id="errors">
                        <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
                    </h4>
                </div>
            <input type="submit"  value="立即注册" class="sub" onclick="return submit2()">
        </div>
        </form>

    </div>
</div>
</body>
<script>
if(<%=request.getAttribute("msg2")==null?"false":"true"%>){
    alert("用户名重复，请重新输入");
}


    var code=document.getElementById("code_img");
    code.onclick=function () {
        this.src="http://localhost:8080/kaptcha.jpg?d="+new Date();
    };
    var myName=document.getElementById("username");
    myName.onblur=function () {
        var username=this.value;
       $.ajax({
        type:"post",
           url:'/UserServlet',
           data:'action=RegisterName&username='+username,
           success:function (data) {
               var tip=document.getElementById("exists");
               tip.innerText=data;
               console.log(data);
           }
       })
    }

</script>
</html>