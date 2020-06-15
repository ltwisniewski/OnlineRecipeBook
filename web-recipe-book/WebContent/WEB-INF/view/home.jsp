<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web recipe book</title>
</head>
<body>

<p>
	User: <security:authentication property="principal.username" />
	<br>
	Role: <security:authentication property="principal.authorities" />
</p>
<hr>

<p>
<a href="recipe/list">Recipe list</a>
</p>

<hr>
<security:authorize access="hasRole('USER')">
<p>
	<a href="<c:url value="/user" />">User content</a>
</p>
</security:authorize>
<br>
<security:authorize access="hasRole('ADMIN')">
<p>
	<a href="<c:url value="/admin" />">Admin content</a>
</p>
</security:authorize>
<hr>

<p>
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout">
	</form:form>
</p>
</body>
</html>