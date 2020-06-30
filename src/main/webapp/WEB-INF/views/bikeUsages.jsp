
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Bike usages</title>
</head>
<body>
<h2>Wypożyczenia, rezerwacje i naprawy</h2>
<table border="2" bgcolor="#dc143c">
    <tbody>
    <tr>
        <td>Użytkownik</td>
        <td>Rower</td>
        <td>Model</td>
        <td>Status</td>
        <td>Początek</td>
        <td>Koniec</td>
    </tr>
    <c:forEach items="${usages}" var="usage">
        <tr>
            <td><c:out value="${usage.lender.lastName}"/></td>
            <td><c:out value="${usage.bike.brand.name}"/></td>
            <td><c:out value="${usage.bike.brand.model}"/></td>
            <td><c:out value="${usage.usageStatus.name}"/></td>
            <td><fmt:parseDate value="${ usage.startTime }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
            <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }" /></td>
            <td><fmt:parseDate value="${ usage.endTime }" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
                <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${ parsedDateTime }" /></td>

        <%--            <td><c:out value="${bike.color}"/></td>--%>
<%--            <td><c:out value="${bike.size}"/></td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href = "<c:url value = "/usage/add"/>">Dodaj</a>
</body>
</html>
