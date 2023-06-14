package com.ssm.service;

import com.ssm.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService {
    boolean login(User user,HttpServletRequest request);
    int registry(User user);
}
