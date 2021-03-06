package com.itdr.controller;

import com.itdr.common.ResponseCode;
import com.itdr.pojo.Users;
import com.itdr.services.UserService;
import com.itdr.services.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/backed/user/*")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet (request, response);
    }

    private UserService userService = new UserServiceImpl ();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestURI = request.getRequestURI ();
        String[] split = requestURI.split ("/");
        //管理员登录
        switch (split[split.length-1]){
                //登录
            case "login":
                login(request, response);
                break;
                //获取管理员信息
            case "getmsg":
                getMsg (request, response);
                break;
        }
    }


    //管理员登录
    private void login(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter ("username");
        String password = request.getParameter ("password");

        ResponseCode<Users> login = userService.login (username, password);

        //登录成功，保存用户信息
        HttpSession session = request.getSession ();
        Users data = login.getData ();
        session.setAttribute ("us",data);

        request.getRequestDispatcher ("/WEB-INF/home.jsp").forward (request,response);
    }
    //获取管理员信息
    private void getMsg(HttpServletRequest request,HttpServletResponse response){
        System.out.println ("获取管理员信息");
    }
    //修改管理员信息
    //禁用管理员
    int Integer = 3;
}
