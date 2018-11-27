<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>biaotou</title>
</head>
<body>
    <c:forEach var="tmp" items="${biaotou}">
        ${tmp.name}<br/>
    </c:forEach>
</body>
</html>
