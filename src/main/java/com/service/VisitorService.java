package com.service;

import com.po.PageInfo;
import com.po.Visitor;

import java.util.List;


public interface VisitorService {
    //分页查询
    public PageInfo<Visitor> findPageInfo(String v_name, Integer v_phone , Integer pageIndex, Integer pageSize);
    public int addVisitor(Visitor visitor);   //添加访客信息
    public List<Visitor> getAll();
}
