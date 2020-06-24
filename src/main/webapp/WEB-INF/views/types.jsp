
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Types</title>
</head>
<body>
<h2>Typy</h2>
<table border="2" bgcolor="#00bfff">
    <tbody>
    <tr>
        <td>Typ</td>
        <td>Full</td>
    </tr>
    <c:forEach items="${types}" var="type">
        <tr>
            <td><c:out value="${type.typeName}"/></td>
            <td><c:out value="${type.fullSuspension}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href = "<c:url value = "/type/add"/>">Dodaj nowy typ</a>
</body>
</html>
