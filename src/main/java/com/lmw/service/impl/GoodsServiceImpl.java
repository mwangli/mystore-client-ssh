package com.lmw.service.impl;

import com.lmw.beans.Goods;
import com.lmw.dao.GoodsDao;
import com.lmw.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsDao goodsDaoImpl;

    @Override
    public List<Goods> listGoodsByName(String name, Integer currentPage, Integer pageSize) {
        return goodsDaoImpl.listGoodsByName(name,currentPage,pageSize);
    }

    @Override
    public Integer getCountByName(String name) {

        return goodsDaoImpl.getCountByName(name);
    }
}
