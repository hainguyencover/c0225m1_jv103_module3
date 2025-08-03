<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .container {
      width: 60%;
      margin: 0 auto;
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    table, th, td {
      border: 1px solid black;
    }

    th, td {
      padding: 8px 12px;
    }

    form {
      margin: 10px 0;
    }

    input[type="text"] {
      padding: 6px;
      width: 200px;
    }

    input[type="submit"] {
      padding: 6px 12px;
    }

    a {
      margin: 0 5px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>User Management</h1>
  <h2><a href="/users?action=create">Add New User</a></h2>

  <h2>Search by Country</h2>
  <form action="users" method="get">
    <input type="hidden" name="action" value="search"/>
    <input type="text" name="country" placeholder="Enter country"/>
    <input type="submit" value="Search"/>
  </form>

  <h2>Sort by Name</h2>
  <form action="users" method="get">
    <input type="hidden" name="action" value="sort"/>
    <input type="submit" value="Sort by Name"/>
  </form>

  <table>
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.id}">Edit</a>
          <a href="/users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>