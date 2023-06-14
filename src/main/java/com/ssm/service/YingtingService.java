package com.ssm.service;

import com.ssm.entity.YingTing;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
public interface YingtingService {
     List<YingTing> getYingtingBycinema(int id);
     YingTing getYingtingById(int id);
}
