package com.lmw.web;

import com.lmw.beans.Goods;
import com.lmw.service.GoodsService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
@Scope("prototype")
public class GoodsAction extends ActionSupport {

    //每页显示数据条数
    private static final Integer SIZE = 10;
    @Autowired
    private GoodsService goodsServiceImpl;

    //通过名称关键字进行模糊分页查询
    public String listGoodsByName() {
        String name = ServletActionContext.getRequest().getParameter("name");
        if (name ==null){
            name="";//若没有指定名称关键字则匹配空字符串，即查询所有
        }
        String currentPage = ServletActionContext.getRequest().getParameter("currentPage");
        if(currentPage==null ){
            currentPage="1";//没有指定当前页则默认查询第一页
        }
        List<Goods> list = goodsServiceImpl.listGoodsByName(name,Integer.parseInt(currentPage),SIZE);
        ActionContext.getContext().put("list",list);
        ActionContext.getContext().put("name",name);
        Integer totalCount = goodsServiceImpl.getCountByName(name);
        Integer totalPage = ((Double) Math.ceil(totalCount * 1.0 / SIZE)).intValue();
        ActionContext.getContext().put("currentPage", Integer.parseInt(currentPage));
        ActionContext.getContext().put("totalCount", totalCount);
        ActionContext.getContext().put("totalPage", totalPage);
        return "goods";
    }

}
