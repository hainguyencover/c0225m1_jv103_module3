<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
  <title>Simple Dictionary</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
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
    h2 {
      text-align: center;
      margin-bottom: 20px;
      font-weight: bold;
    }

    form input[type="text"] {
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
    }
  </style>
</head>
<body>
<form action="/translate" method="post">
  <h2>Vietnamese Dictionary</h2>
  <label>
    <input type="text" name="txtSearch" placeholder="Enter your word: "/>
  </label>
  <input type = "submit" id = "submit" value = "Search"/>
</form>
</body>
</html>