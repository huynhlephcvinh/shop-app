package com.project.shopapp.service;

import com.project.shopapp.models.Product;
import com.project.shopapp.services.ProductService;
import org.junit.jupiter.api.BeforeEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceTest {
    private final ProductService productService;
    private Product product;
    @Autowired
    public ProductServiceTest(ProductService productService){
        this.productService = productService;
    }
    @BeforeEach
    public void setup(){
    }
}
