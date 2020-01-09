<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<script type="text/javascript">
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom Theme CSS 
<link href="${css}/bootstrap-Cerulean-Theme.css" rel="stylesheet">
-->

<!-- Bootstrap for Datatable -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Glyphicons -->
<link href="${css}/glyphicons.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">


</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		
	    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
	    	<div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
	            </div>
	        </div>
		</nav>
		

		<!-- Page Content -->

		<div class="content">
			<div class="container">
			
			<c:if test="${not empty message}">
			<div class="row">
				<div class="offset-3 col-6">
					<div class="alert alert-danger">
						${message}
					</div>
				</div>
			</div>
			</c:if>
			
			<c:if test="${not empty logout}">
			<div class="row">
				<div class="offset-3 col-6">
					<div class="alert alert-success">
						${logout}
					</div>
				</div>
			</div>
			</c:if>
			
				<div class="row">
					<div class="offset-3 col-6">
						<div class="card">
							<div class="card-header bg-light text-dark">
								<h4><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>Login</h4>
							</div>
							<div class="card-body">
								<form action="${contextRoot}/login" method="post" class="form-horizontal" id="loginForm">
									<div class="form-group">
										<label for="username" class="col-12 control-label">Email:</label>
										<div class="col-12">
											<input type="text" name="username" id="username" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-12 control-label">Password:</label>
										<div class="col-12">
											<input type="password" name="password" id="password" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										
										<div class="text-center">
											<input type="submit" value="login" class="btn btn-primary"/>
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
										</div>
									</div>
								</form>
							</div>
							
							<div class="card-footer">
       							<div class="text-right">
       								New User - <a href="${contextRoot}/register">Register Here</a>
       							</div>
       						</div>
       						
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- /.container -->

		<!-- Footer -->

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		
		<!-- jQuery Validator -->
		<script src="${js}/jquery.validate.js"></script>

		<!-- Self coded JS -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html>