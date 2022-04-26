<%--
  Created by IntelliJ IDEA.
  User: job
  Date: 26/04/22
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="br.edu.ifpb.domain.Editoras" %>
<%@ page import="br.edu.ifpb.infra.EditorasEmJDBC" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--http://localhost:8080/app/buscar.jsp?localOrigem=cz--%>
<form method="get" action="buscar.jsp">
    <input type="text" name="localOrigem"/>
    <input type="submit" value="filtrar">
</form>
<%
    Editoras editoras = new EditorasEmJDBC();
    String localOrigem = request.getParameter("localOrigem");
    if(localOrigem ==null || "".equals(localOrigem)){
        request.setAttribute("editoras", editoras.todas());
    }else{
        request.setAttribute("editoras", editoras.porLocalDeOrigem(localOrigem));
    }
%>
<%@include file="listar.jsp" %>

</body>
</html>
