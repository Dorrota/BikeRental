
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Usage statuses</title>
</head>
<body>
<h2>Typy</h2>
<table border="2" bgcolor="#9370db">
    <tbody>
    <tr>
        <td>Status roweru</td>
    </tr>
    <c:forEach items="${statuses}" var="status">
        <tr>
            <td><c:out value="${status.name}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
