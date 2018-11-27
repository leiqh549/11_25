<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <script src="https://cdn.bootcss.com/jquery/3.0.0/jquery.js"></script>
  <body>
    This is my JSP page. <br>
    <input id="searchBtn" type="submit" value="click me!"/>
    <%--<a href="/showZhuJiLiangKu/JsonTest?username=haha&password=778899abc">jump</a>--%>

  <form action="/showZhuJiLiangKu/JsonTest" method="post">
      <input type="text" name="username"/>
      <input type="text" name="password"/>
      <input type="submit" value="test">
  </form>

  </body>
  <script>
      $("#searchBtn").click(function(){
          $.ajax({
              type: "POST",
              url: "/showZhuJiLiangKu/JsonTest",
              data:JSON.stringify({username:"sam",password:"123"}),
                  dataType:"json",
                      contentType: "application/json; charset=utf-8",
                      success: function(data){
                          $.each(data, function (n, value) {
                              alert(n + ' ' + value);
                              var trs = "";
                              trs += "<tr><td>" + value.name + "</td> <td>" + value.password + "</td></tr>";
                              tbody += trs;
                          });
              }
          });
      })

  </script>
</html>
