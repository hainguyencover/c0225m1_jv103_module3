package com.example.lesson10_jsp_jstl.model;

public class Customer {
    private String name;
    private String dob;
    private String address;
    private String imageUrl;

    public Customer(String name, String dob, String address, String imageUrl) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.imageUrl = imageUrl;
    }

    // Getter
    public String getName() {
        return name;
    }

    public String getDob() {
        return dob;
    }

    public String getAddress() {
        return address;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}

