package com.spring.bookstore.repository;


import com.spring.bookstore.entity.OrderDetailsEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetailsEntity, Integer> {
    }

