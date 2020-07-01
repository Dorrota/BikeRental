
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Bike usages</title>
</head>
<body>
<h2>Wypożyczenia, rezerwacje i naprawy</h2>
<table class="table table-bordered" bgcolor="#dc143c">
    <thead>
    <tr>
        <th scope="col">Użytkownik</th>
        <th scope="col">Rower</th>
        <th scope="col">Model</th>
        <th scope="col">Status</th>
        <th scope="col">Początek</th>
        <th scope="col">Koniec</th>
    </tr>
    <thead>
    <tbody>
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

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>
</html>
