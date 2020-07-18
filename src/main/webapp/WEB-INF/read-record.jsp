<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show info about record</title>
</head>
<%@include file="header.html"%>
<br>
<p>First Name: <%=request.getParameter("firstName")%></p>
<p>Last Name: <%=request.getParameter("lastName")%></p>
<p>Address: <%=request.getAttribute("address")%></p>
</body>
</html>