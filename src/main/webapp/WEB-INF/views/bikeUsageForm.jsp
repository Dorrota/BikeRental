<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Bike usages form</title>
</head>
<body>
<div class="container">
    <h3>Nowe wypożyczenie, rezerwacja, naprawa</h3>
    <form:form method="post" modelAttribute="usage">
        <div class="form-group">
            model: <form:select path="bike" itemLabel="brand.model" itemValue="brand" items="${bikes}"/>
        </div>
        <div class="form-group">
            typ: <form:select path="usageStatus" itemLabel="name" itemValue="id" items="${statuses}"/></div>
        <div class="form-group">
            użytkowik: <form:select path="lender" itemLabel="lastName" itemValue="id" items="${lenders}"/></div>
        <div class="form-group">
            data początkowa: <form:input type="datetime-local" path="startTime"/></div>
        <div class="form-group">
            data końcowa: <form:input type="datetime-local" path="endTime"/></div>
        <br>

        <input class="btn btn-primary" type="submit" value="Zapisz">

    </form:form>

    <p><a href="<c:url value = "/usage/all"/>">Wróć do listy wypożyczeń</a></p>
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
