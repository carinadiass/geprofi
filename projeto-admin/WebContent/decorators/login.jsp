<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS code from Bootply.com editor -->

<style type="text/css">
.colorgraph {
	height: 5px;
	border-top: 0;
	background: #c4e17f;
	border-radius: 5px;
	background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%,
		#f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%,
		#db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%,
		#669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
	background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca
		25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe
		50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1
		87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
</head>

<!-- HTML code from Bootply.com editor -->
<body>
	<div class="container">
		<h2>GeProFi - Gerenciador Eletr�nico de Projeto Final</h2>
	<p>Seja bem vindo a ferramenta de gerenciamento dos projetos finais
		do curso de ci�ncia da computa��o da UFRJ.</p>
	<div class="carousel slide" id="carousel-374609">
		<ol class="carousel-indicators">
			<li data-slide-to="0" data-target="#carousel-374609" class="active">
			</li>
			<li data-slide-to="1" data-target="#carousel-374609"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item">
				<img alt="" src=<c:url value="../imagens/carousel(1).jpg"/> height="1600" width="500" />
				<div class="carousel-caption">
					<h4> <font  size="9">Projetos Finais Finalizados</font></h4>
					<p>
						  <font  size="5">Se est� a procura por um tema de projeto final e n�o sabe qual
						professor pode lhe ajudar nesse processo, acesse aqui.</font> </br>
					</p>
					<a class="btn btn-primary btn-lg"
							href="${linkTo[ProjetosController].lista}" role="button">Visualizar</span></a>
				</div>
			</div>
			<div class="item active">
			
				<div class="carousel-caption">
					<h4> <font  size="9">Buscar �rea de Interesse</font></h4>
					<p>
						  <font size="5">Se est� a procura por um tema de projeto final e n�o sabe qual
						professor pode lhe ajudar nesse processo, acesse aqui.</font> </br>
					</p>
					<a class="btn btn-primary btn-lg"
						href="${linkTo[AreaDeInteresseController].lista}" role="button">Buscar</span></a>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#carousel-374609"
			data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
		<a class="right carousel-control" href="#carousel-374609"
			data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
	</div>
	</div>
	</div>
		<div class="row">
			<div class="span12" style="text-align: center; margin: 0 auto;">
				<form class="form-signin" style="width: 400px; margin: 0 auto;">
					<h2 class="form-signin-heading">Acesso o GeProFi</h2>
					<label for="inputEmail" class="sr-only">Email</label> <input
						type="email" id="inputEmail" class="form-control"
						placeholder="Email" required autofocus> <label
						for="inputPassword" class="sr-only">Senha</label> <input
						type="password" id="inputPassword" class="form-control"
						placeholder="Senha" required>
					<div class="checkbox">
						
					</div>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
					<label> <input type="checkbox" value="remember-me">
							Esqueceu Senha?
						</label>
				</form>
			</div>
		</div>
	</div>
</body>
</html>