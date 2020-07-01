
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Brand form</title>
</head>
<body>

<h3>Dodaj nową markę</h3>
<form:form method="post" modelAttribute="brand">
    Marka:
    <form:input path="name"/>
    <form:errors path="name"/><br>
    Model:
    <form:input path="model"/>
    <form:errors path="model"/><br><br>

    <input type="submit" name="Zapisz">

</form:form>

<p><a href = "<c:url value = "/brand/all"/>">Wróć do listy marek rowerów</a></p>

</body>
</html>
