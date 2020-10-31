<%--
  Created by IntelliJ IDEA.
  User: 李庆
  Date: 2020/10/12
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p style="color: red">${msg}</p>
<form action="/deng" method="post">
    账号：<input type="text" name="username"><br>
    密码：<input type="password" name="password" ><br>
<input type="submit" value="登录" >
</form>
</body>
</html>
