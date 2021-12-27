package com.heng.ssm.service.impl;

import com.heng.ssm.base.BaseDao;
import com.heng.ssm.base.BaseServiceImpl;
import com.heng.ssm.mapper.CarMapper;
import com.heng.ssm.entity.Car;
import com.heng.ssm.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarServiceImpl extends BaseServiceImpl<Car> implements CarService {

    @Autowired
    private CarMapper carMapper;

    @Override
    public BaseDao<Car> getBaseDao() {
        return carMapper;
    }
}
