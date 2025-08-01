<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Currency Converter</title>
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
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }
    form{
      background: white;
      padding: 30px;
      width: 300px;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
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
<h2>Currency Converter</h2>
<form action="/convert" method="post">
  <label>Rate: </label><br/>
  <label>
    <input type="text" name="rate" placeholder="RATE" value="22000"/>
  </label><br/>
  <label>USD: </label><br/>
  <label>
    <input type="text" name="usd" placeholder="USD" value="0"/>
  </label><br/>
  <input type="submit" id="submit" value="Converter"/>
</form>
</body>
</html>