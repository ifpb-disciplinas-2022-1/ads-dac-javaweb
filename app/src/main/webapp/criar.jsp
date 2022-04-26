<%--
  Created by IntelliJ IDEA.
  User: job
  Date: 26/04/22
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="editora.do" method="post">
    <label> Local de Origem:
        <input type="text" name="localDeOrigem">
    </label>
    <label> Nome Fantasia:
        <input type="text" name="nomeFantasia">
    </label>
    <input type="submit" value="+"/>
</form>

<a href="editora.do">listagem de editoras</a>

</body>
</html>
