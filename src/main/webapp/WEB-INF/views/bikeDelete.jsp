<%--
  Created by IntelliJ IDEA.
  User: Dorota
  Date: 24/06/2020
  Time: 13:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Delete bike</title>
</head>
<body>
<h3>Czy na pewno usunąć ten rower?</h3>
<c:out value="${bike.brand.model}"/>
<a href = "<c:url value = "/bike/all"/>">Nie</a>
<a href = "<c:url value = "/bike/delete/yes/${bike.id}"/>">Tak</a>

</body>
</html>
