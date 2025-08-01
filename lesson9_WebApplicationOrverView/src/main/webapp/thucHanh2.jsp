<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
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

    .login {
      background: white;
      padding: 30px;
      width: 300px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    .login h2 {
      text-align: center;
      margin-bottom: 20px;
      font-weight: bold;
    }

    .login input[type="text"],
    .login input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .login input[type="submit"] {
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

    .login input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
<form action="/login" method="post">
  <div class="login">
    <h2>Login</h2>
    <input type="text" name="username" placeholder="Username" required />
    <input type="password" name="password" placeholder="Password" required />
    <input type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>
