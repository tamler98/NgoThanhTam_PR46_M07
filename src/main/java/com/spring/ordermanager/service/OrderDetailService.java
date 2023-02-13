package com.spring.ordermanager.service;

import com.spring.ordermanager.entity.OrderDetailsEntity;
import com.spring.ordermanager.repository.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailService {
    @Autowired
    OrderDetailRepository orderDetailRepository;
    public List<OrderDetailsEntity> findByOrderId(int orderId) { return orderDetailRepository.findByOrderId(orderId);
    }
}
