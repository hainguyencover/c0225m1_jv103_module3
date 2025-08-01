<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<head>
  <title>Product Discount Calculator</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: #f0f2f5;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    form {
      background: white;
      padding: 30px;
      width: 300px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    form h2 {
      text-align: center;
      margin-bottom: 20px;
      font-weight: bold;
    }

    form input[type="text"],
    input[type="number"]{
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    form input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #007BFF;
      border: none;
      border-radius: 5px;
      color: white;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    form input[type="submit"]:hover {
      background-color: #0056b3;
    }</style>
</head>
<body>
<form action="/display_discount" method="post">
  <h2>Product Discount Calculator</h2>
  <label>
    <input type="text" name="description" placeholder="Enter description " required>
  </label>
  <label>
    <input type="number" name="price" step="0.01" placeholder="Enter price " required>
  </label>
  <label>
    <input type="number" name="percent"  step="0.01" placeholder="Enter discount percent " required>
  </label>
  <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>