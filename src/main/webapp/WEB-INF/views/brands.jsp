
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Brands</title>
</head>
<body>
<h2>Marki rowerów</h2>
<table border="2" bgcolor="#228b22">
    <tbody>
    <tr>
        <td>Marka</td>
        <td>Model</td>
    </tr>
    <c:forEach items="${brands}" var="brand">
        <tr>
            <td><c:out value="${brand.name}"/></td>
            <td><c:out value="${brand.model}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
