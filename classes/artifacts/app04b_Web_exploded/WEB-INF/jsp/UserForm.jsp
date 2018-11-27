<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html>
<html>
<head>
<title>Add Product Form</title>
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
</head>
<body>

<div id="global">
<form method="post" action="/save-user">
   <fieldset>
        <legend>Add a product</legend>
            <p>
                <label for="username">User Name: </label>
                <input type="text" id="username" name="username"
                    tabindex="1">
            </p>
            <p>
                <label for="password">password: </label>
                <input type="text" id="password"
                    name="password" tabindex="2">
            </p>
            <p>
                <label for="tel">tel: </label>
                <input type="text" id="tel" name="tel"
                    tabindex="3">
            </p>
           <p>
               <label for="address">address: </label>
               <input type="text" id="address" name="address.location"
                      tabindex="3">
           </p>
            <p id="buttons">
                <input id="reset" type="reset" tabindex="4">
                <input id="submit" type="submit" tabindex="5" 
                    value="Add User">
            </p>
    </fieldset>
</form>
</div>
</body>
</html>