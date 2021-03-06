<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="fr">

<head>
	<meta charset="UTF-8">
<title>Transfert In</title>
<link rel="stylesheet" href="<c:url value="/librairie/bootstrap-3.3.7/css/bootstrap.min.css" />">
<link rel="stylesheet" href="<c:url value="/librairie/bootstrap-3.3.7/css/bootstrap.css" />">
<script src="<c:url value="/librairie/js/confirmClient.js" />"></script>
<script src="<c:url value="/librairie/jquery/jquery-3.1.1.min.js" />"></script>
<script src="<c:url value="/librairie/bootstrap-3.3.7/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Votre Espace D</h4>
      <br>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<c:url value="/apercu"/>"><span class="glyphicon glyphicon-piggy-bank"></span> Mes comptes</a></li>
		<li class="active"><a href="<c:url value="/transfertIn"/>"><span class="glyphicon glyphicon-transfer"></span> Transfert vers un compte interne</a></li>
		<li><a href="<c:url value="/transfertOut"/>"><span class="glyphicon glyphicon-transfer"></span> Transfert vers un compte externe</a></li>
		<li><a href="<c:url value="/credit"/>"><span class="glyphicon glyphicon-credit-card"></span> Rembourser carte de credit</a></li>
		<li><a href="<c:url value="/profil" />"><span class="glyphicon glyphicon-user"></span> Mon profil</a></li>
		<li><a href="<c:url value="/deconnexion" />"><span class="glyphicon glyphicon-log-out"></span> Deconnexion</a></li>
      </ul><br>
    </div>

    <div class="col-sm-8">
						<hr>
						<h3>
							Tranfert d'argent entre vos comptes<span
								class="glyphicon glyphicon-usd"></span>
						</h3>
						<form
							method="post"
							onsubmit="return check();"
							id="formTransfertIn"
							action="<c:url value="/transfertIn" />"
							role="form">
							<h3>1. Choisir le compte emetteur</h3>
							<div class="form-group">
								<label for="compteOut">Compte Emetteur</label> <select
									class="form-control"
									id="compteOut"
									name="compteOut"
									onchange="checkAccount();">
									<option>Choisir compte emetteur</option>
									<c:forEach items="${comptes}" var="comptes">
									<option>${comptes.type} ${comptes.idBanque} ${comptes.idCompte} ${comptes.solde} $ </option>
									</c:forEach>
								</select>
							</div>
							<hr>
							<h3>2. Indiquer les informations sur le compte receveur</h3>
							<div class="form-group">
								<label for="compteIn">Compte receveur</label> <select
									class="form-control"
									id="compteIn"
									name="compteIn"
									onchange="checkAccount();">
									<option>Choisir compte receveur</option>
									<c:forEach items="${comptes}" var="comptes">
									<option>${comptes.type} ${comptes.idBanque} ${comptes.idCompte} ${comptes.solde} $ </option>
									</c:forEach>
								</select>
								<span id="confirmMessage" class="confirmMessage"></span>
							</div>
							<h3>3. Inscrire le montant désiré</h3>
							<div class="form-group">
								<input
									type=number step=0.01
									class="form-control"
									id="montant"
									name="montant"
									placeholder="100">
							</div>
								<c:if test="${succes == true}">
							<div class="alert alert-success">
								<p>${description}</p>
							</div>
						</c:if>
						<c:if test="${succes == false}">
							<div class="alert alert-danger">
								<p>${description}</p>
							</div>
						</c:if>
							<br><hr>
							<button
								class="btn btn-danger">Effectuer le transfert</button>
							<input
								type="hidden"
								name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>
  </div>
</div>

<footer class="container-fluid">
  <p>Banque du Demon</p>
</footer>
</body>
</html>