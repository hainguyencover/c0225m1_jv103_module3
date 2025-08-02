<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-success text-white">
            <h4>Thêm sản phẩm mới</h4>
        </div>
        <div class="card-body">
            <form method="post" action="/products?action=create">
                <div class="mb-3">
                    <label class="form-label">ID</label>
                    <input type="number" name="id" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Tên sản phẩm</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Giá</label>
                    <input type="number" step="0.01" name="price" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mô tả</label>
                    <textarea name="description" class="form-control"></textarea>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nhà sản xuất</label>
                    <input type="text" name="manufacturer" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-success">Lưu</button>
                <a href="/products" class="btn btn-secondary">Huỷ</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
