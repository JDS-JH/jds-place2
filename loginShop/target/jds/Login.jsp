<!DOCTYPE html>
<%@ page isELIgnored="false" contentType="text/html;charset=gb2312" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>��¼</title>
    <link href="��¼/css/login.css" rel="stylesheet" type="text/css"> <!--��ת��login ��ʽ��-->
    <script type="text/javascript" src="js/jquery-3.5.1/jquery-3.5.1.min.js"></script>

</head>
<body>
<form action="UserServlet" method="post">
    <input type="hidden" name="action" value="Login">
    <div class="middle"> <!-- ����div ����-->
        <div class="contain">  <!--��Ӧ�ʺϱ������������С-->
            <div class="top-contain"> <!--�ö�-->
            <h3>��¼</h3>
            <a href="register.jsp">����ע��</a>    <!--ע�����-->
            </div>
            <div class="login-contain">
                <input type="text" id="username" name="username" placeholder="�������û���" ><br> <!--�ı���֮��br����-->
                <input type="password" id="password" name="password" placeholder="����������" ><br>
                <button class="sub">��¼</button>
            </div>
        </div>
    </div>
</form>
</body>
<%--<script type="text/javascript">
    var var1 ='<%=request.getParameter("var1")%>';
    if(var1=='yes'){
        alert("��������˺�����¼ʧ��!");
    }
</script>--%>
</html>
