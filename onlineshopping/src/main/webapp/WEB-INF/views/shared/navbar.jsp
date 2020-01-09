<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item" id="home"><a class="nav-link"
					href="${contextRoot}/home">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" id="about"><a class="nav-link"
					href="${contextRoot}/about">About</a></li>
				<li class="nav-item" id="contact"><a class="nav-link"
					href="${contextRoot}/contact">Contact</a></li>
				<li class="nav-item" id="listProducts"><a class="nav-link"
					href="${contextRoot}/show/all/products">List Products</a></li>
				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item" id="manageProducts"><a class="nav-link"
						href="${contextRoot}/manage/products">Manage Products</a></li>
				</security:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			
				<security:authorize access="isAnonymous()">
					<li class="nav-item" id="register"><a class="nav-link"
						href="${contextRoot}/register">Sign Up</a></li>
					<li class="nav-item" id="login"><a class="nav-link"
						href="${contextRoot}/login">Login</a></li>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<li class="nav-item dropdown">
						<a href="javascript:void(0)" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
							${userModel.fullName} 
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<security:authorize access="hasAuthority('USER')">
								<a class="dropdown-item" href="${contextRoot}/cart">
									<span class="glyphicon glyphicon-shopping-cart"></span>
									<span class="badge badge-primary">${userModel.cart.cartLines}</span> - &#8377; ${userModel.cart.cartLines}
								</a>
							</security:authorize>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="${contextRoot}/perform-logout">Logout</a>
							</div>
					</li>
				</security:authorize>
				
			</ul>
		</div>
	</div>
</nav>

<script>
	window.userRole = '${userModel.role}';
</script>
