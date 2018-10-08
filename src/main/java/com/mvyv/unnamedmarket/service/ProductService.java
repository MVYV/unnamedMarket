package com.mvyv.unnamedmarket.service;

import com.mvyv.unnamedmarket.entity.Product;
import com.mvyv.unnamedmarket.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service
public class ProductService {

    private final ProductRepository productRepository;

    @Autowired
    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product findByName(String name) {
        return productRepository.findByName(name);
    }

    public List<Product> findByCategory(String category) {
        return productRepository.findByCategory(category);
    }

    public List<Product> findByCategoryAndPrice(String category, double price) {
        return productRepository.findByCategoryAndPrice(category, price);
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }

    public List<String> findCategories() {
        return productRepository.findCategory();
    }
}
