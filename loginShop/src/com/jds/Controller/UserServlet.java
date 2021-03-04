package com.jds.Controller;

import com.google.code.kaptcha.Constants;

import com.jds.Service.ExistsServiceUsername;
import com.jds.Service.LoginService;
import com.jds.Service.RegisterService;
import com.jds.Service.impl.ExistsServiceUsernameImpl;
import com.jds.Service.impl.LoginServiceImpl;
import com.jds.Service.impl.RegisterServiceImpl;
import com.jds.entity.Reader;
import com.jds.entity.UserName;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;



public class UserServlet extends HttpServlet {
    private LoginService loginService=new LoginServiceImpl();
    protected void Login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        Reader reader=loginService.login(username,password);
        if(reader!=null){
            resp.setContentType("text/html;charset=uft-8");
            HttpSession session=req.getSession();
            session.setAttribute("reader",reader);
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else{
            resp.sendRedirect("Login.jsp?var1=yes");
        }
    }


    private ExistsServiceUsername existsServiceUsername=new ExistsServiceUsernameImpl();
    protected void RegisterName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=uft-8");
        String username = req.getParameter("username");
        UserName userName = existsServiceUsername.register(username);

        if(userName!=null) {
            if (username.equals(userName.getUsername())) {
                resp.getWriter().write("用户名已被使用，请重新输入");
            }
        }
        else {
            resp.getWriter().write("用户名可以使用");
        }
    }

    protected void LoginOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect("Login.jsp");
    }


    private RegisterService registerService=new RegisterServiceImpl();
    private ExistsServiceUsername existsServiceUsername2=new ExistsServiceUsernameImpl();
    protected void Register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String passworda = req.getParameter("passworda");
        String password=req.getParameter("password");
        String email = req.getParameter("email");
        String tel1 = req.getParameter("tel");
        int tel = Integer.parseInt(tel1);
        String name = req.getParameter("name");
        String token=(String) req.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(Constants.KAPTCHA_SESSION_KEY);
        String code=req.getParameter("code");
        UserName userName = existsServiceUsername2.register(username);
        if(token!=null&&token.equalsIgnoreCase(code)){
            if(userName==null){
                registerService.userregister(username,passworda,tel,email);
                req.getRequestDispatcher("Login.jsp").forward(req,resp);

            }
            else{
                req.setAttribute("msg2","用户名重复，请重新输入");
                req.setAttribute("email",email);
                req.setAttribute("password",password);
                req.setAttribute("passworda",passworda);
                req.setAttribute("tel",tel1);
                req.getRequestDispatcher("register.jsp").forward(req,resp);

            }
        }
        else {
            req.setAttribute("msg","验证码错误");
            req.setAttribute("email",email);
            req.setAttribute("username",username);
            req.setAttribute("password",password);
            req.setAttribute("passworda",passworda);
            req.setAttribute("tel",tel1);
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }


    }




    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        try {
            Method method=this.getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
            System.out.println(method);
            method.invoke(this,req,resp);

        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        try {
            Method method=this.getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
            method.invoke(this,req,resp);
        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
}
