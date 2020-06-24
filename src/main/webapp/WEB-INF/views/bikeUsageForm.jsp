
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Bike usages form</title>
</head>
<body>
<h3>Nowe wypożyczenie, rezerwacja, naprawa</h3>
<form:form method="post" modelAttribute="usage">
    model: <form:select path="bike" itemLabel="brand.model" itemValue="brand" items="${bikes}" /><br>
    typ: <form:select path="usageStatus" itemLabel="name" itemValue="id" items="${statuses}" /><br>
    użytkowik: <form:select path="lender" itemLabel="lastName" itemValue="id" items="${lenders}"/><br>
    data początkowa: <form:input type="datetime-local" path="startTime"/><br>
    data końcowa: <form:input type="datetime-local" path="endTime"/>
    <br>

    <input type="submit">

</form:form>
</body>
</html>
