
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Bikes current use</title>
</head>
<body>
<div class="container">
    <h3 class="title">Co robią rowery?</h3>
    <table class="table table-bordered">
        <thead>
        <tr bgcolor="#dc143c">
            <th scope="col">Rower</th>
            <th scope="col">Status</th>
            <th scope="col">Początek</th>
            <th scope="col">Koniec</th>
            <th scope="col">Kto</th>
        </tr>
        </thead>
        <tbody>
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
</div>


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
