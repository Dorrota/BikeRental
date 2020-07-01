<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2>Rowery</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">Rower</th>
            <th scope="col">Marka</th>
            <th scope="col">Model</th>
            <th scope="col">Typ</th>
            <th scope="col">Full</th>
            <th scope="col">Kolor</th>
            <th scope="col">Rozmiar</th>
            <th scope="col">Usuń</th>
            <th scope="col">Wypożyczenia</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${bikes}" var="bike">
            <tr>
                <td><c:out value="${bike.bikeName}"/></td>
                <td><c:out value="${bike.brand.name}"/></td>
                <td><c:out value="${bike.brand.model}"/></td>
                <td><c:out value="${bike.type.typeName}"/></td>
                <td><c:out value="${bike.type.fullSuspension}"/></td>
                <td><c:out value="${bike.color}"/></td>
                <td><c:out value="${bike.size}"/></td>
                <td><a href="<c:url value = "/bike/delete/${bike.id}" />">Usuń</a></td>
                <td><a href="<c:url value = "/usage/bike/${bike.id}"/>">Zobacz wypożyczenia</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <p><a href="<c:url value = "/bike/add"/>">Dodaj nowy rower</a>
    </p>
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
