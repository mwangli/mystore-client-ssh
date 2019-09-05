package com.lmw.service;

import com.lmw.beans.Goods;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface GoodsService {

    //分页查询
    List<Goods> listGoodsByName(String name, Integer currentPage, Integer pageSize);

    //查询总数
    Integer getCountByName(String name);
}
