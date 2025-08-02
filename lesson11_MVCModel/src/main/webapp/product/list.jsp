<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">📋 Danh sách sản phẩm</h2>

    <form class="d-flex mb-3" action="/products" method="get">
        <input type="hidden" name="action" value="search"/>
        <input class="form-control me-2" type="text" name="name" placeholder="🔍 Tìm sản phẩm..."/>
        <button class="btn btn-outline-primary" type="submit">Tìm</button>
    </form>

    <a href="/products?action=create" class="btn btn-success mb-3">Thêm sản phẩm</a>

    <table class="table table-bordered table-hover shadow-sm bg-white">
        <thead class="table-primary">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Giá</th>
            <th>NSX</th>
            <th>Thao tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.manufacturer}</td>
                <td>
                    <a href="/products?action=view&id=${product.id}" class="btn btn-sm btn-info">Xem</a>
                    <a href="/products?action=edit&id=${product.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/products?action=delete&id=${product.id}" class="btn btn-sm btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>