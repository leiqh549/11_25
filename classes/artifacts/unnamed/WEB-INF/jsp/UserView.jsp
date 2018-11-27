<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>View Product</title>
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
</head>
<body>
<div id="global">
    <h4>${message}</h4>
    <p>
        <h5>Details:</h5>
        Name: ${user.username}<br/>
        Password: ${user.password}<br/>
        Tel: $${user.tel}<br/>
        Address: ${user.address.location}
    </p>
</div>
</body>
</html>