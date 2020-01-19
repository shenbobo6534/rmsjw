package com.itdr.services;

import com.itdr.common.ResponseCode;
import com.itdr.pojo.Users;

public interface UserService {
    ResponseCode<Users>login(String username,String password);
}
