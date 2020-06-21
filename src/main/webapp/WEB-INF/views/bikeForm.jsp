
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Bike form</title>
</head>
<body>
<h3>Dodaj nowy rower</h3>
<form:form method="post" modelAttribute="bike">
    model: <form:select path="brand" itemLabel="model" itemValue="id" items="${brands}" /><br>
    typ: <form:select path="type" itemLabel="typeName" itemValue="id" items="${types}" /><br>
    rozmiar: <form:input path="size"/><br>
    kolor: <form:input path="color"/><br>

    <input type="submit">

</form:form>

</body>
</html>
