package com.spring.ordermanager.service;

import com.spring.ordermanager.entity.OrderEntity;
import com.spring.ordermanager.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    OrderRepository orderRepository;
    public Object findAll() { return orderRepository.findAll();}
    public List<OrderEntity> findByCustomerNameContainingOrOrderDateContainingOrProductName(String searchInput, String searchInput1, String searchInput2) {return orderRepository.findByCustomerNameContainingOrOrderDateContainingOrProductName(searchInput, searchInput1, searchInput2);}
}
