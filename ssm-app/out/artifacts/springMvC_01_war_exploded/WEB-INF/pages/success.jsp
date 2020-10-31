<%--
  Created by IntelliJ IDEA.
  User: 86166
  Date: 2020/7/4
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>文件上传成功</h3>
<img src="<%=request.getSession().getAttribute("file")%>"/>
</body>
</html>
