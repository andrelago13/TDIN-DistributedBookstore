<%--
  Created by IntelliJ IDEA.
  User: André
  Date: 29/04/2017
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<jsp:include page="includes/header.jsp" />

<body>
<div>
  <form action="login" method="post">
    <input type="text" name="username" placeholder="Username"/>
    <input type="password" name="password" placeholder="Password"/>
    <input type="submit" text="Login"/>
  </form>
</div>
<!--<c:forEach items="${list}" var="item">
    <p>${item}</p><br/>
</c:forEach>-->
</body>
