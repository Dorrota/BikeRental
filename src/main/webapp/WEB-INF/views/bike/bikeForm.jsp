<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Bike form</title>
</head>
<body>
<div class="container">
    <h3>Dodaj nowy rower</h3>
    <form:form method="post" modelAttribute="bike">
        <div class="form-group">
            <label>nazwa: </label><form:input class="form-control" path="bikeName"/>
            <div class="alert"><form:errors path="bikeName"/></div>
        </div>
        <div class="form-group">
            <label>model:</label> <form:select class="form-control" path="brand" itemLabel="model" itemValue="id"
                                               items="${brands}"/>
            <div class="text-alert"><form:errors path="brand"/></div>
        </div>
        <div class="form-group">
            <label>typ: </label><form:select class="form-control" path="type" itemLabel="typeName" itemValue="id"
                                             items="${types}"/>
        </div>
        <div class="form-group">
            <label>rozmiar: </label><form:input class="form-control" path="size"/>
        </div>
        <div class="form-group">
            <label>kolor: </label><form:input class="form-control" path="color"/>
        </div>

        <input class="btn btn-primary" type="submit" value="Zapisz">

    </form:form>

    <div class="hyperlink"><a class="text-success" href="<c:url value = "/bike/all"/>">Wróć do listy rowerów</a></div>
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
