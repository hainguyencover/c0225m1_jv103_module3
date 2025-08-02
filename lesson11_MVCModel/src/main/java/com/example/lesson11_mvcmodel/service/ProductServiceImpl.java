package com.example.lesson11_mvcmodel.service;

import com.example.lesson11_mvcmodel.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static final Map<Integer, Product> products = new HashMap<>();
    static {
        products.put(1, new Product(1, "Laptop", 1500, "Gaming laptop", "Asus"));
        products.put(2, new Product(2, "Phone", 800, "Smartphone", "Samsung"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products.values()) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}
