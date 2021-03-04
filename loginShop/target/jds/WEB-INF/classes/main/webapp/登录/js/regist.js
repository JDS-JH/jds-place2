
function submit1() {
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
                    alert("注册成功");
                    return true;
                }
            }else{
                alert('两次输入的密码不一致');
                return false;
            }
        }


}
