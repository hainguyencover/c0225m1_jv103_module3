package com.example.lesson11_mvcmodel.controller;

import com.example.lesson11_mvcmodel.model.Product;
import com.example.lesson11_mvcmodel.service.ProductService;
import com.example.lesson11_mvcmodel.service.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private final ProductService productService = new ProductServiceImpl();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "view":
                showViewForm(request, response);
                break;
            case "search":
                searchProduct(request, response);
                break;
//            case "delete":
//                deleteProduct(request, response);
//                break;
            case "delete":
                showDeleteConfirm(request, response);
                break;
            default:
                listProducts(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                updateProduct(request, response);
                break;
            case "delete":
                confirmDelete(request, response);
                break;

        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.findAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/product/list.jsp").forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/product/create.jsp").forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");

        Product product = new Product(id, name, price, description, manufacturer);
        productService.save(product);
        response.sendRedirect("/products");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/product/edit.jsp").forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String manufacturer = request.getParameter("manufacturer");

        Product product = new Product(id, name, price, description, manufacturer);
        productService.update(id, product);
        response.sendRedirect("/products");
    }

    private void showDeleteConfirm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/product/delete.jsp").forward(request, response);
    }

    private void confirmDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.remove(id);
        response.sendRedirect("/products");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.remove(id);
        response.sendRedirect("/products");
    }

    private void showViewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/product/view.jsp").forward(request, response);
    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Product> result = productService.searchByName(name);
        request.setAttribute("products", result);
        request.getRequestDispatcher("/product/list.jsp").forward(request, response);
    }
}
