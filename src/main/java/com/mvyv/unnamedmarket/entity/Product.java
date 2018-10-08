package com.mvyv.unnamedmarket.entity;

import lombok.*;

import javax.persistence.*;

@Data
@Table(name = "products")
@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private long id;

    @Column(name = "name", length = 100, nullable = false)
    private String name;

    @Column(name = "price", nullable = false)
    private double price;

    @Column(name = "category", length = 100, nullable = false)
    private String category;

    @Column(name = "image", nullable = false)
    private String images;

    @Column(name = "characteristics", nullable = false)
    private String characteristics;

}
