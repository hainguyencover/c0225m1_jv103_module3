<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.example.lesson11_mvcmodel.model.Product" %>
<jsp:useBean id="product" type="com.example.lesson11_mvcmodel.model.Product" scope="request"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-info text-white">
            <h4>Chi tiết sản phẩm</h4>
        </div>
        <div class="card-body">
            <p><strong>ID:</strong> ${product.id}</p>
            <p><strong>Tên:</strong> ${product.name}</p>
            <p><strong>Giá:</strong> ${product.price}</p>
            <p><strong>Mô tả:</strong> ${product.description}</p>
            <p><strong>Nhà sản xuất:</strong> ${product.manufacturer}</p>
            <a href="/products" class="btn btn-secondary">Quay lại</a>
        </div>
    </div>
</div>
</body>
</html>
