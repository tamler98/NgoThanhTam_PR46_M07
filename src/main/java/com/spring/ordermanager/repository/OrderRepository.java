package com.spring.ordermanager.repository;


import com.spring.ordermanager.entity.OrderDetailsEntity;
import com.spring.ordermanager.entity.OrderEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, Integer> {
//    @Query(value = "SELECT * FROM customer.orders where customerName like %?1% or orderDate like %?2%",nativeQuery = true)
//    List<OrderEntity> findByCustomerNameContainingOrOrderDateContaining(String searchInput, String searchInput2);

    @Query(value = "select * from orders as o\n" +
            "inner join orderdetail as od\n" +
            "on o.id = od.orderId\n" +
            "inner join product as p\n" +
            "on od.productId = p.id\n" +
            "where o.orderDate like %?1% or o.customerName like %?2% or p.name like %?3%",nativeQuery = true)
    List<OrderEntity> findByCustomerNameContainingOrOrderDateContainingOrProductName(String searchInput, String searchInput2, String searchInput3);

}
