<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/14
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Collection" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="GetJsonSuccess.jsp" method="post" >
<%
        String data = request.getParameter("data");
        request.setAttribute("data",data);

%>
    <input type="submit" value="submit">
</form>

</body>
</html>
