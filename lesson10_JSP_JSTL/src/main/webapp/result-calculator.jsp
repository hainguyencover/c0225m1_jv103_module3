<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Kết quả</title>
</head>
<body>
<h2>Kết quả phép tính</h2>

<c:choose>
    <jsp:useBean id="result" scope="request" type=""/>
    <c:when test="${not empty result}">
        <p>Kết quả: <strong>${result}</strong></p>
    </c:when>
    <c:otherwise><jsp:useBean id="error" scope="request" type=""/>

        <p style="color: red;">Lỗi: ${error}</p>
    </c:otherwise>
</c:choose>

<br/>
<a href="index.jsp">Quay lại</a>
</body>
</html>