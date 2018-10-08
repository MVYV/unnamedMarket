package com.mvyv.unnamedmarket.controller;

import com.mvyv.unnamedmarket.entity.Product;
import com.mvyv.unnamedmarket.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class ProductController {

    private final Logger logger = LoggerFactory.getLogger(ProductController.class);
    private final ProductService productService;

    @Autowired
    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/categories")
    public ResponseEntity<List<String>> products() {
//    public ResponseEntity<List<String>> products() {
        List<Product> products = productService.findAll();
        List<String> categories = productService.findCategories();
        logger.info("Categories: {}", categories);

//        boolean a = true;
//        int b;
//        b = (a) ? 10 : 20;
//        System.out.println(b);

//        return ResponseEntity.ok(categories);
        return ResponseEntity.ok(categories);
    }

}
