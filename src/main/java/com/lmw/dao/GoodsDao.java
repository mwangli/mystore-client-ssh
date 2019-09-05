package com.lmw.dao;

import com.lmw.beans.Goods;

import java.util.List;

public interface GoodsDao {

    List<Goods> listGoodsByName(String name, Integer currentPage, Integer pageSize);

    Integer getCountByName(String name);
}
