<%--
  Created by IntelliJ IDEA.
  User: 李庆
  Date: 2020/9/28
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/loginServlet" method="post">
    账号：<input type="text" name="username"><br>
    密码：<input type="password" name="password" ><br>
    <input type="radio" name="sex" value="boy"> 男
    <input type="radio" name="sex" value="girl"> 女<br>
    <input type="checkbox" name="like" value="跑步"> 跑步
    <input type="checkbox" name="like" value="打球"> 打球
    <input type="checkbox" name="like" value="登山"> 登山
    <input type="checkbox" name="like" value="健美"> 健美<br>
  <input type="submit" value="注册" >
    <a href="/dengs">已有账号</a>
  </form>
  </body>
</html>
