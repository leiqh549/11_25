<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/12
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索</title>
</head>
<body>
<form action = "/showZhuJiLiangKu/searching" method="post">
<table border="1px solid blue">
    <tr>
        <%--<td>毛重:<input type="text" name="maoZhong"></td>--%>
        <%--<td>皮重:<input type="text" name="piZhong"></td>--%>
        <%--<td>净重:<input type="text" name="jingZhong"></td>--%>
        <%--<td>毛重计量员:<input type="text" name="maoZhongJiLiangYuan"></td>--%>
        <%--<td>毛重日期:<input type="text" name="maoZhongRiQi"></td>--%>
        <%--<td>毛重时间:<input type="text" name="maoZhongShiJian"></td>--%>
        <%--<td>品种:<input type="text" name="pinZhong"></td>--%>
        <%--<td>计量方式:<input type="text" name="jiLiangFangShi"></td>--%>
        <%--<td>供货单位:<input type="text" name="gongHuoDanWei"></td>--%>
        <%--<td>收货单位:<input type="text" name="shouHuoDanWei"></td>--%>
        <%--<td>编号:<input type="text" name="bianHao"></td>--%>
        <td>车号:<input type="text" name="cheHao"></td>
        <%--<td>日期时间:<input type="text" name="riQiShiJian"></td>--%>
        <%--<td>卡号:<input type="text" name="kaHao"></td>--%>
        <%--<td>运输单位:<input type="text" name="yunShuDanWei"></td>--%>
        <%--<td>皮重计量员:<input type="text" name="piZhongJiLiangYuan"></td>--%>
        <%--<td>皮重日期:<input type="text" name="piZhongRiQi"></td>--%>
        <%--<td>皮重时间:<input type="text" name="piZhongShiJian"></td>--%>
        <%--<td>皮重差:<input type="text" name="piZhongCha"></td>--%>
        <%--<td>出入库:<input type="text" name="chuRuKu"></td>--%>

        <input type="submit" value = "submit">
    </tr>
</table>
</form>
</body>
</html>
