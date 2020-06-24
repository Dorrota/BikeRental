<%--
  Created by IntelliJ IDEA.
  User: Dorota
  Date: 21/06/2020
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Lenders</title>
</head>
<body>
<h2>Wypożyczający</h2>
<table border="2" bgcolor="#f0fff0">
    <tbody>
    <tr>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>email</td>
        <td>PESEL</td>


    </tr>
    <c:forEach items="${lenders}" var="lender">
        <tr>
            <td><c:out value="${lender.firstName}"/></td>
            <td><c:out value="${lender.lastName}"/></td>
            <td><c:out value="${lender.email}"/></td>
            <td><c:out value="${lender.pesel}"/></td>

        </tr>
    </c:forEach>
    </tbody>
</table>

<p><a href = "<c:url value = "/lender/add"/>">Dodaj nowego użytkownika</a></p>

</body>
</html>
