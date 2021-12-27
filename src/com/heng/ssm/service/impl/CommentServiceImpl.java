package com.heng.ssm.service.impl;

import com.heng.ssm.base.BaseDao;
import com.heng.ssm.base.BaseServiceImpl;
import com.heng.ssm.mapper.CommentMapper;
import com.heng.ssm.entity.Comment;
import com.heng.ssm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl extends BaseServiceImpl<Comment> implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public BaseDao<Comment> getBaseDao() {
        return commentMapper;
    }
}
