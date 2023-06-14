package com.ssm.dao;

import com.ssm.entity.YingTing;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.asm.SpringAsmInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @program: SSM-12
 * @description:
 * @author: DY
 * @create: 2023-06-01 09:08
 **/
@Repository
public class YingtingDao {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
    public List<YingTing> getYingtingBycinema(int id){
         return sqlSessionTemplate.selectList("yingtingMapper.getYingtingBycinema",id);
    }
    public  YingTing getYingtingById(int id){
        return sqlSessionTemplate.selectOne("yingtingMapper.getYingtingById",id);
    }
}
