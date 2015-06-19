<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="header.jsp"%>
<title>GeProFi </title>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<h2>GeProFi - Gerenciador Eletrônico de Projeto Final</h2>
	<p>Seja bem vindo a ferramenta de gerenciamento dos projetos finais
		do curso de ciência da computação da UFRJ.</p>
	<div class="carousel slide" id="carousel-374609">
		<ol class="carousel-indicators">
			<li data-slide-to="0" data-target="#carousel-374609" class="active">
			</li>
			<li data-slide-to="1" data-target="#carousel-374609"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item">
				<img alt="" src="../../CarouselBack.jpg" height="1600" width="500" />
				<div class="carousel-caption">
					<h4> <font  size="9">Projetos Finais Finalizados</font></h4>
					<p>
						  <font  size="5">Se está a procura por um tema de projeto final e não sabe qual
						professor pode lhe ajudar nesse processo, acesse aqui.</font> </br>
					</p>
					<a class="btn btn-primary btn-lg"
							href="${linkTo[ProjetosController].lista}" role="button">Visualizar</span></a>
				</div>
			</div>
			<div class="item active">
				<img alt="" src="../../CarouselBack.jpg"  height="1600" width="500" />
				<div class="carousel-caption">
					<h4> <font  size="9">Buscar Área de Interesse</font></h4>
					<p>
						  <font size="5">Se está a procura por um tema de projeto final e não sabe qual
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
	<%@include file="login.jsp"%>
	</div>
</body>
</html>
