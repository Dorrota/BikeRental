<%--
  Created by IntelliJ IDEA.
  User: Dorota
  Date: 21/06/2020
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Bike usages</title>
</head>
<body>
<h2>Wypożyczenia, rezerwacje i naprawy</h2>
<table border="2" bgcolor="#dc143c">
    <tbody>
    <tr>
        <td>Marka</td>
        <td>Model</td>
        <td>Typ</td>
        <td>Full</td>
        <td>Kolor</td>
        <td>Rozmiar</td>
    </tr>
    <c:forEach items="${usages}" var="usage">
        <tr>
            <td><c:out value="${usage.lender.lastName}"/></td>
            <td><c:out value="${bike.brand.model}"/></td>
            <td><c:out value="${bike.type.typeName}"/></td>
            <td><c:out value="${bike.type.fullSuspension}"/></td>
            <td><c:out value="${bike.color}"/></td>
            <td><c:out value="${bike.size}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
