
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Bikes</h2>
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
    <c:forEach items="${bikes}" var="bike">
        <tr>
            <td><c:out value="${bike.brand.name}"/></td>
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
