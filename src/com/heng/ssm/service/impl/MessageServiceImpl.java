package com.heng.ssm.service.impl;

import com.heng.ssm.base.BaseDao;
import com.heng.ssm.base.BaseServiceImpl;
import com.heng.ssm.mapper.MessageMapper;
import com.heng.ssm.entity.Message;
import com.heng.ssm.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Override
    public BaseDao<Message> getBaseDao() {
        return messageMapper;
    }
}
