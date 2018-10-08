package com.mvyv.unnamedmarket.repository;

import com.mvyv.unnamedmarket.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {

    Product findByName(String name);

    List<Product> findByCategory(String category);

    List<Product> findByCategoryAndPrice(String category, double price);

    @Query(value = "SELECT DISTINCT category FROM Product")
    List<String> findCategory();
}
