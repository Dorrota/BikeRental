<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Lenders</title>
</head>
<body>
<div class="container">
    <h2>Wypożyczający</h2>
    <table class="table table-bordered">
        <tbody>
        <tr bgcolor="#f0fff0">
            <td>Imię</td>
            <td>Nazwisko</td>
            <td>email</td>
            <td>PESEL</td>
            <td>Usuń</td>


        </tr>
        <c:forEach items="${lenders}" var="lender">
            <tr>
                <td><c:out value="${lender.firstName}"/></td>
                <td><c:out value="${lender.lastName}"/></td>
                <td><c:out value="${lender.email}"/></td>
                <td><c:out value="${lender.pesel}"/></td>
                <td><button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal_${lender.id}">Usuń</button></td>

                <div id="myModal_${lender.id}" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Czy na pewno usunąć tego użytkownika?</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body">
                                <c:out value="${lender.lastName}"/>
                                <div class="hyperlink"><a href="<c:url value = "/lender/all"/>">Nie     </a>
                                    <a href="<c:url value = "/lender/delete/${lender.id}"/>">Tak</a></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>

            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="hyperlink"><a href="<c:url value = "/lender/add"/>">Dodaj nowego użytkownika</a></div>
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
