package com.ssm.dao;

import com.ssm.entity.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-05-18 11:12
 **/
@Repository
public class UserDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    public User getUserByUserName(String userName){
        return  sqlSessionTemplate.selectOne("userMapper.getUserByUserName",userName);
    }
    public int registry(User user){
        return sqlSessionTemplate.insert("userMapper.registry",user);
    }
}
