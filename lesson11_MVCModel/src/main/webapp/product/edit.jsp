<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.example.lesson11_mvcmodel.model.Product" %>
<jsp:useBean id="product" type="com.example.lesson11_mvcmodel.model.Product" scope="request"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-warning text-dark">
            <h4>Sửa thông tin sản phẩm</h4>
        </div>
        <div class="card-body">
            <form method="post" action="/products?action=edit">
                <input type="hidden" name="id" value="${product.id}">
                <div class="mb-3">
                    <label class="form-label">Tên sản phẩm</label>
                    <input type="text" name="name" value="${product.name}" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Giá</label>
                    <input type="number" step="0.01" name="price" value="${product.price}" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mô tả</label>
                    <textarea name="description" class="form-control">${product.description}</textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nhà sản xuất</label>
                    <input type="text" name="manufacturer" value="${product.manufacturer}" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Cập nhật</button>
                <a href="/products" class="btn btn-secondary">Huỷ</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>