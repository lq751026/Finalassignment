<%@ page import="com.lq.bean.User" %><%--
  Created by IntelliJ IDEA.
  User: 李庆
  Date: 2020/10/12
  Time: 8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h>欢迎您回来:${user.username}</h><br>
<h>当前的登录次数：<%=request.getSession().getServletContext().getAttribute("number") %></h>

</body>
</html>
