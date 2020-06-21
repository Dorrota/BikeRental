
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Usage status form</title>
</head>
<body>
<h3>Dodaj nowy status użytkowania roweru</h3>
<form:form method="post" modelAttribute="status">
    Typ:
    <form:input path="name"/><br>

    <input type="submit" name="Zapisz">

</form:form>

</body>
</html>
