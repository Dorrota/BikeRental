<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Rowery</title>
</head>
<body>
<div class="container">
    <h2>Rowery</h2>
    <table class="table table-bordered">
        <thead>
        <tr bgcolor="#ffd700">
            <th scope="col">Rower</th>
            <th scope="col">Marka</th>
            <th scope="col">Model</th>
            <th scope="col">Typ</th>
            <th scope="col">Full</th>
            <th scope="col">Kolor</th>
            <th scope="col">Rozmiar</th>
            <th scope="col">Usuń</th>
            <th scope="col">Wypożyczenia</th>
            <th scope="col">Zmień</th>
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
                <td><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal_${bike.id}">Usuń</button></td>
                <td><a href="<c:url value = "/usage/bike/${bike.id}"/>">Zobacz wypożyczenia</a></td>
                <td><a href="<c:url value = "/bike/edit/${bike.id}"/>">Zmień nazwę</a></td>
            </tr>
            <div id="myModal_${bike.id}" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Czy na pewno usunąć ten rower?</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <c:out value="${bike.brand.model}"/>
                            <div class="hyperlink"><a href="<c:url value = "/bike/all"/>">Nie     </a>
                                <a href="<c:url value = "/bike/delete/${bike.id}"/>">Tak</a></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <div class="hyperlink"><a href="<c:url value="/bike/add"/>">Dodaj nowy rower</a>
    </div>
    <div><a href="<c:url value = "/usage/bikes"/>">Rowery w użyciu</a></div>
    <div class="hyperlink"><a class="text-success" href="<c:url value = "/"/>">Powrót</a></div>
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
