package com.itdr.services;

import com.itdr.common.ResponseCode;

public interface ProductService {
    ResponseCode getAllProduct();

    ResponseCode toType(String id);

    ResponseCode getfuzzySearch(String key);

    ResponseCode addOne(String pname, String price, String pnum);
}
