<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.example.lesson11_mvcmodel.model.Product" %>
<jsp:useBean id="product" type="com.example.lesson11_mvcmodel.model.Product" scope="request"/>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Xác nhận xoá sản phẩm</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
  <div class="card border-danger shadow">
    <div class="card-header bg-danger text-white">
      <h4 class="mb-0">Xác nhận xoá sản phẩm</h4>
    </div>
    <div class="card-body">
      <p class="mb-3">Bạn có chắc chắn muốn xoá sản phẩm sau không?</p>
      <ul class="list-group list-group-flush mb-3">
        <li class="list-group-item"><strong>ID:</strong> ${product.id}</li>
        <li class="list-group-item"><strong>Tên:</strong> ${product.name}</li>
        <li class="list-group-item"><strong>Giá:</strong> ${product.price}</li>
        <li class="list-group-item"><strong>Mô tả:</strong> ${product.description}</li>
        <li class="list-group-item"><strong>Nhà sản xuất:</strong> ${product.manufacturer}</li>
      </ul>
      <form method="post" action="/products?action=delete" class="d-flex gap-2">
        <input type="hidden" name="id" value="${product.id}">
        <button type="submit" class="btn btn-danger">Xoá</button>
        <a href="/products" class="btn btn-secondary">Huỷ</a>
      </form>
    </div>
  </div>
</div>
</body>
</html>
