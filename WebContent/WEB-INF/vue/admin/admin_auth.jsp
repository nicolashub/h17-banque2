<%@ page
	language="java"
	contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib
	prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="fr">
<head>
<title>Login Admin</title>
<link
	rel="stylesheet"
	href="<c:url value="/librairie/bootstrap-3.3.7/css/bootstrap.min.css" />">
<link
	rel="stylesheet"
	href="<c:url value="/librairie/bootstrap-3.3.7/css/bootstrap.css" />">
<script src="<c:url value="/librairie/js/valideLogin.js" />"></script>
<script src="<c:url value="/librairie/jquery/jquery-3.1.1.min.js" />"></script>
<script
	src="<c:url value="/librairie/bootstrap-3.3.7/js/bootstrap.min.js" />"></script>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a
					class="navbar-brand"
					href="#">Votre D-aministration</a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<c:url value="/deconnexion" />"><span
						class="glyphicon glyphicon-log-out"></span> Deconnexion</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<h3>Acc�der � mon compte d'administration</h3>
		<br>
		<hr>
		<form
			method="post"
			id="login"
			action="<c:url value="/secureAdmin" />"
			role="form">
			<div class="form-group row">
				<label
					for="inputEmail3"
					class="col-sm-2 col-form-label">Identifiant</label>
				<div class="col-sm-10">
					<input
						type="text"
						class="form-control"
						id="idt"
						name="idt"
						value="${username}"
						placeholder="Saisir votre identifiant"
						required>
				</div>
			</div>
			<div class="form-group row">
				<label
					for="inputPassword3"
					class="col-sm-2 col-form-label">Cl� de s�curit�</label>
				<div class="col-sm-10">
					<input
						type="password"
						class="form-control"
						id="secureKey"
						name="secureKey"
						placeholder="Saisir votre cl� de s�curit�"
						value="1234567"
						required>
				</div>
			</div>
			<div class="form-group row">
				<div class="offset-sm-2 col-sm-10">
					<button
						type="submit"
						class="btn btn-primary">Valider mon Identit�</button>
					<input
						type="hidden"
						name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</div>
			</div>
		</form>
		<c:if test="${param.error != null}">
			<div class="alert alert-danger">
				<p>Probl�me d'authentification.</p>
			</div>
		</c:if>
		<c:if test="${param.logout != null}">
			<div class="alert alert-success">
				<p>Deconnexion avec succ�s.</p>
			</div>
		</c:if>
	</div>
	<footer class="container-fluid text-center">
		<p>Banque du demon</p>
	</footer>
</body>
</html>