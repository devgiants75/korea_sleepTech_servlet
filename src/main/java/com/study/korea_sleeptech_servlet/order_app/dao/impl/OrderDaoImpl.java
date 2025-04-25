package com.study.korea_sleeptech_servlet.order_app.dao.impl;

import com.study.korea_sleeptech_servlet.order_app.dao.OrderDao;
import com.study.korea_sleeptech_servlet.order_app.entity.Order;

import java.util.List;

public class OrderDaoImpl implements OrderDao {
    @Override
    public boolean save(Order order) {
        return false;
    }

    @Override
    public List<Order> findByUserId(int userId) {
        return List.of();
    }
}
