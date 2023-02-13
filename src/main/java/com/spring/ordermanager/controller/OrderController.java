package com.spring.ordermanager.controller;

import com.spring.ordermanager.entity.OrderDetailsEntity;
import com.spring.ordermanager.entity.OrderEntity;
import com.spring.ordermanager.service.OrderDetailService;
import com.spring.ordermanager.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class OrderController {
    @Autowired
    OrderService orderService;

    @Autowired
    OrderDetailService orderDetailService;

    @GetMapping(value = "/")
    public String showOrder(Model model) {
        model.addAttribute("orderList", orderService.findAll());
        return "orderlist";
    }

    @GetMapping(value = "/search")
    public String searOrder(@RequestParam(name="searchInput") String searchInput, Model model) {
        List<OrderEntity> searchList;
        if (searchInput.isEmpty()) {
            searchList = (List<OrderEntity>) orderService.findAll();
        } else {
            searchList = orderService.findByCustomerNameContainingOrOrderDateContaining(searchInput, searchInput);
        }
        model.addAttribute("orderList",searchList);
        return "orderlist";
    }

    @GetMapping("/view_orderId={orderId}")
    public String orderDetails(@PathVariable(name="orderId")  int orderId, Model model) {
        List<OrderDetailsEntity> orderDetailsEntityList = orderDetailService.findByOrderId(orderId);
        model.addAttribute("orderDetails", orderDetailsEntityList);
        return "orderdetail";
    }
}
