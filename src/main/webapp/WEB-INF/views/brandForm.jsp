
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Brand form</title>
</head>
<body>

<h3>Dodaj nową markę</h3>
<form:form method="post" modelAttribute="brand">
    Marka:
    <form:input path="name"/><br>
    Model:
    <form:input path="model"/><br><br>

    <input type="submit" name="Zapisz">

</form:form>

</body>
</html>
