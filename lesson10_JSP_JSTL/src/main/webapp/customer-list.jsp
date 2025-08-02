<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.example.lesson10_jsp_jstl.model.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  List<Customer> customerList = new ArrayList<>();
  customerList.add(new Customer("Nguyễn Văn A", "1990-01-01", "Hà Nội", "https://i.pravatar.cc/80?img=1"));
  customerList.add(new Customer("Trần Thị B", "1992-05-10", "Đà Nẵng", "https://i.pravatar.cc/80?img=2"));
  customerList.add(new Customer("Lê Văn C", "1985-09-21", "TP. HCM", "https://i.pravatar.cc/80?img=3"));
  request.setAttribute("customers", customerList);
%>

<html>
<head>
  <title>Danh sách khách hàng</title>
  <style>
    table {
      width: 80%;
      margin: 20px auto;
      border-collapse: collapse;
    }
    th, td {
      border: 1px solid #bbb;
      padding: 10px;
      text-align: center;
    }
    img {
      border-radius: 50%;
    }
  </style>
</head>
<body>
<h2 style="text-align: center;">Danh sách khách hàng</h2>
<table>
  <tr>
    <th>STT</th>
    <th>Tên</th>
    <th>Ngày sinh</th>
    <th>Địa chỉ</th>
    <th>Ảnh</th>
  </tr>
  <c:forEach var="cus" items="${customers}" varStatus="loop">
    <tr>
      <td>${loop.index + 1}</td>
      <td>${cus.name}</td>
      <td>${cus.dob}</td>
      <td>${cus.address}</td>
      <td><img src="${cus.imageUrl}" width="80" height="80" alt=""/></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
