
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Index page</title>
</head>
<body>
<h3>Wszystkie rowery</h3>
<a href = "<c:url value = "/bike/all"/>">Rowery</a>
<h3>2</h3>
<a href = "<c:url value = "/type/all"/>">Typy</a>
<h3>3</h3>
<a href = "<c:url value = "/brand/all"/>">Marki</a>
<h3>4</h3>
<a href = "<c:url value = "/usage/all"/>">Wypożyczenia i inne</a>
<h3>5</h3>
<a href = "<c:url value = "/lender/all"/>">Ludzie</a>

</body>
</html>
