package com.heng.ssm.service.impl;

import com.heng.ssm.base.BaseDao;
import com.heng.ssm.base.BaseServiceImpl;
import com.heng.ssm.mapper.ItemMapper;
import com.heng.ssm.entity.Item;
import com.heng.ssm.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService {

    @Autowired
    private ItemMapper itemMapper;
    @Override
    public BaseDao<Item> getBaseDao() {
        return itemMapper;
    }
}
