<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Recipe book login page</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous"/>
  </head>
<body>
	<div class="container">
		<form:form class="form-signin" method="post"
			action="${pageContext.request.contextPath}/authenticateTheUser">
			<h2 class="form-signin-heading">Recipe book - sign in</h2>
			<p>
			<c:if test="${param.error !=null}">
				<i style="color:red;">Sorry! You entered invalid username or password</i>
			</c:if>
			
			<c:if test="${param.logout !=null}">
				<i style="color:blue;">You have been logged out.</i>
			</c:if>
			<p>
			<p>
				<label for="username" class="sr-only">Username</label> <input
					type="text" id="username" name="username" class="form-control"
					placeholder="Username" required autofocus>
			</p>
			<p>
				<label for="password" class="sr-only">Password</label> <input
					type="password" id="password" name="password" class="form-control"
					placeholder="Password" required>
			</p>
			<!-- <input name="_csrf" type="hidden" value="${_csrf.token }" /> -->
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form:form>
		<p>
		<a class="btn btn-light action-button" role="button" href="<c:url value="/"/>">Back to home page</a>
		</p>
	</div>
</body>
</html>