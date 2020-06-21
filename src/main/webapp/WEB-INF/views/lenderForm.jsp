<%--
  Created by IntelliJ IDEA.
  User: Dorota
  Date: 21/06/2020
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Lender form</title>
</head>
<body>

<h3>Zapisz się do wypożyczalni!</h3>
<form:form method="post" modelAttribute="lender">
    Imię:
    <form:input path="firstName"/><br>
    Nazwisko:
    <form:input path="lastName"/><br>
    Email:
    <form:input path="email"/><br>
    PESEL:
    <form:input path="pesel"/><br>

    <input type="submit" name="Zapisz">

</form:form>

</body>
</html>
