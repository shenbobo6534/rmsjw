package com.itdr.services.impl;

import com.itdr.common.ResponseCode;
import com.itdr.dao.ProductDao;
import com.itdr.pojo.Product;
import com.itdr.services.ProductService;

import java.util.List;

public class ProductServiceImpl implements ProductService {

    private ProductDao productDao = new ProductDao ();

    //获得所有商品属性
    @Override
    public ResponseCode getAllProduct() {
        final List<Product> productList = productDao.selectAll ();
        return  ResponseCode.toSuccess (productList);
    }

    //商品下架
    @Override
    public ResponseCode toType(String id) {
        //参数非空判断
        if (id == null || "".equals (id)){
            return ResponseCode.toDefeated ("非法参数!");
        }
        int i = Integer.parseInt (id);
        //查找商品
        Product p = productDao.selectById(i);
        if (p == null){
            return ResponseCode.toDefeated ("商品不存在！");
        }
        //修改商品信息
        int i2 = productDao.updateById(i);
        if (i2<0){
            return ResponseCode.toDefeated ("商品下架失败！");
        }
        return ResponseCode.toSuccess (i2);
    }

    //商品名称进行模糊查询
    @Override
    public ResponseCode getfuzzySearch(String key) {
        if (key == null || "".equals (key)){
            return ResponseCode.toDefeated ("非法参数");
        }

        String keyword = "%"+key+"%";
        List<Product> productList = productDao.fuzzySearch (keyword);
        return ResponseCode.toSuccess (productList);
    }

    //增加新的商品
    @Override
    public ResponseCode addOne(String pname, String price, String pnum) {
        //对参数进行非空判断
        //根据商品查询该商品是否存在，如果存在则不能添加
        Product p = productDao.selectOneByPname (pname);
        if (p != null){
            return ResponseCode.toDefeated ("商品已存在");
        }
        Double d = Double.parseDouble (price);
        Integer m = Integer.parseInt (pnum);
        int i = ProductDao.insertOne(pname,d,m);
        return ResponseCode.toSuccess (i);
    }


}
