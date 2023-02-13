package com.spring.ordermanager.repository;


import com.spring.ordermanager.entity.OrderDetailsEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetailsEntity, Integer> {
    @Query(value = "SELECT * FROM orderdetail where orderId = ?1",nativeQuery = true)
    List<OrderDetailsEntity> findByOrderId(int orderId);
}

