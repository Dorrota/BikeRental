
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2" bgcolor="#dc143c">
    <tbody>
    <tr>
        <td>Rower</td>
        <td>Status</td>
        <td>Początek</td>
        <td>Koniec</td>
        <td>Kto</td>
    </tr>
    <c:forEach items="${usages}" var="usage">
        <tr>
            <td><c:out value="${usage.bike.brand.model}"/></td>
            <td><c:out value="${usage.usageStatus.name}"/></td>
            <td><c:out value="${usage.startTime}"/></td>
            <td><c:out value="${usage.endTime}"/></td>
            <td><c:out value="${usage.lender.lastName}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
