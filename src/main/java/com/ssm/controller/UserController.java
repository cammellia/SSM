package com.ssm.controller;

import com.ssm.entity.User;
import com.ssm.service.Impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-18 11:22
 **/
@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/login")
    @ResponseBody
    public  boolean login(User user, HttpServletRequest request){
        return userService.login(user,request);
    }
    @RequestMapping("/loginOut")
    @ResponseBody
    public boolean loginOut(HttpServletRequest request){
        boolean result=false;
        try{
            request.getSession().removeAttribute("user");
            result=true;
        }catch (Exception e){
        }
        return result;
    }
    @RequestMapping("/registry")
    @ResponseBody
    public  int registry(User user){
        return userService.registry(user);
    }

}
