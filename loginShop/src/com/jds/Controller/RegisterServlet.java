package com.jds.Controller;


import com.google.code.kaptcha.Constants;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token=(String) req.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(Constants.KAPTCHA_SESSION_KEY);
        String code=req.getParameter("code");
        String username=req.getParameter("username");
        resp.getWriter().write(username);

        if(token!=null&&token.equalsIgnoreCase(code)){
                System.out.println("保存到数据库");
        }
        else {
            System.out.println("请不要重复提交表单");
        }
    }
}
