package com.spring.ordermanager.repository;


import com.spring.ordermanager.entity.OrderDetailsEntity;
import com.spring.ordermanager.entity.OrderEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, Integer> {
    @Query(value = "SELECT * FROM customer.orders where customerName like %?1% or orderDate like %?2%",nativeQuery = true)
    List<OrderEntity> findByCustomerNameContainingOrOrderDateContaining(String searchInput, String searchInput2);

}
