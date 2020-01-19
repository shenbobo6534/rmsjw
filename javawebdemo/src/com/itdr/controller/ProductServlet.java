package com.itdr.controller;

import com.itdr.common.ResponseCode;
import com.itdr.services.ProductService;
import com.itdr.services.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/backed/product/*")
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet (request, response);
    }

    private ProductService productService = new ProductServiceImpl ();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String requestURI = request.getRequestURI ();
        String[] split = requestURI.split ("/");

        switch (split[split.length-1]){
                //获取所有商品
            case "getall":
                getAllProduct (request, response);
                break;
                //商品下架
            case "totype":
                totype (request, response);
                break;
                //模糊查询
            case "fuzzysearch":
                fuzzySearch (request, response);
                break;
            case "addone":
                addOne (request, response);
                break;
        }
    }


    //获取所有商品数据
    private void getAllProduct(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        ResponseCode allProduct = productService.getAllProduct ();
        request.setAttribute ("plist",allProduct);
        request.getRequestDispatcher ("/WEB-INF/plist.jsp").forward (request,response);
    }
    //商品下架
    private void totype(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String id = request.getParameter ("id");
        ResponseCode allProduct = productService.toType (id);
        //把数据转换成json格式
        response.getWriter ().write (allProduct.getData ().toString ());
    }
    //根据商品进行模糊查询
    private void fuzzySearch(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String key = request.getParameter ("key");
        ResponseCode allProduct = productService.getfuzzySearch (key);
        request.setAttribute ("plist",allProduct);
        request.getRequestDispatcher ("/WEB-INF/plist.jsp").forward(request,response);
    }
    //对商品进行增加的方法
    private void addOne(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
        String pname = request.getParameter ("pname");
        String price = request.getParameter ("price");
        String pnum = request.getParameter ("pnum");

        request.setCharacterEncoding("UTF-8");
        ResponseCode allProduct = productService.addOne (pname,price,pnum);

        request.getRequestDispatcher ("/WEB-INF/plist.jsp").forward(request,response);
    }
}
