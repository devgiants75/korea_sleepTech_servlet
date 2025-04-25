package com.study.korea_sleeptech_servlet.order_app.controller;

import com.study.korea_sleeptech_servlet.order_app.dao.OrderDao;
import com.study.korea_sleeptech_servlet.order_app.dao.UserDao;
import com.study.korea_sleeptech_servlet.order_app.dao.impl.OrderDaoImpl;
import com.study.korea_sleeptech_servlet.order_app.dao.impl.UserDaoImpl;
import com.study.korea_sleeptech_servlet.order_app.entity.Order;
import com.study.korea_sleeptech_servlet.order_app.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class OrderController extends HttpServlet {
    private final OrderDao orderDao = new OrderDaoImpl();
    private final UserDao userDao = new UserDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        int userId = Integer.parseInt(request.getParameter("userId"));
        String productName = request.getParameter("productName");
        int amount = Integer.parseInt(request.getParameter("amount"));

        User user = userDao.findById(userId);

        if (user == null) {
            response.getWriter().println("해당 사용자가 존재하지 않습니다.");
            return;
        }

        Order order = new Order(userId, productName, amount);
        boolean result = orderDao.save(order);
        response.getWriter().println(result ? "주문 완료" : "주문 실패");
    }
}