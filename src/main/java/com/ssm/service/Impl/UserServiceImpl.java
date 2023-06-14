package com.ssm.service.Impl;

import com.ssm.dao.UserDao;
import com.ssm.entity.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-18 11:17
 **/
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean login(User user, HttpServletRequest request) {
        User user1 = userDao.getUserByUserName(user.getUserName());
        if (user1 != null) {
            if (user1.getPassword().equals(user.getPassword())) {
                //将用户信息保存到Session
                request.getSession().setAttribute("user", user1);
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override
    public int registry(User user) {
        return userDao.registry(user);
    }

}