<%--
  Created by IntelliJ IDEA.
  User: asl_m
  Date: 02/05/2017
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${title}</title>
    <c:forEach items="${list}" var="item">
        ${item}<br>
    </c:forEach>
</head>
<body>

</body>
</html>
