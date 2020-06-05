<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/5/2020
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>List of Product</title>
</head>
<body>
<jsp:useBean id="display" class="com.practice.model.ProductBean"/>
<h2>List of Products</h2>
<table border="1" >
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Description</td>
    </tr>
    <c:forEach  items="${display.products}" var="product">
        <tr>
            <td><c:out value="${product.id}"/></td>
            <td><c:out value="${product.name}"/></td>
            <td><c:out value="${product.desc}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
