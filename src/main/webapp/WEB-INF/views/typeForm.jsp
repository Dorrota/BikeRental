
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Type form</title>
</head>
<body>
<h3>Dodaj nowy typ</h3>
<form:form method="post" modelAttribute="type">
    Typ:
    <form:input path="typeName"/><br>
    Full:
    <form:input path="fullSuspension"/><br>

    <input type="submit" name="Zapisz">

</form:form>

</body>
</html>
