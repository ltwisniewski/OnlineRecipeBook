<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Recipe book</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.min.css">
</head>

<body>
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-button">
        <div class="container"><a class="navbar-brand" href="#">Online Recipe BOOK</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav mr-auto">
					<li class="nav-item" role="presentation"><a
						class="nav-link active" href="#">Home</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="<c:url value="/recipe/list"/>">Recipes</a></li>
				</ul>
				<security:authorize access="isAuthenticated()">
					<span class="navbar-text actions"> 
					<p class="login">User: <security:authentication property="principal.username"/></p>
					<form:form method="POST" action="${pageContext.request.contextPath}/logout">
						<input class="btn btn-light action-button" role="button" type="submit" value="Logout">
					</form:form>
					</span>
				</security:authorize>
				<security:authorize access="!isAuthenticated()">
					<span class="navbar-text actions"> <a class="login"
						href="<c:url value="/recipeLoginPage"/>">Log In</a><a
						class="btn btn-light action-button" role="button" href="#">Sign Up</a></span>
				</security:authorize>
			</div>
		</div>
    </nav>
    <div data-bs-parallax-bg="true" style="height:500px;background-image:url(https://unsplash.it/1800/900?image=1051);background-position:center;background-size:cover;"></div>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/script.min.js"></script>
</body>

</html>