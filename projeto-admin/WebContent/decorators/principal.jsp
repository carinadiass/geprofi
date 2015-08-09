<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet"
		href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GeProFi</title>
<decorator:head />
</head>

<body id="corpo" class="container">

	<div id="geral">
		<!-- 0 -->
		<div id="topo"><%@ include file="header.jsp"%></div>
		<!-- 1 -->
		<div id="menu"><%@ include file="menu.jsp"%></div>
		<!-- 2 -->
		<br>
			<div id="conteudo">
				<div id="esquerda">
					<!-- 3 -->
					<div id="info"><%@ include file="info.jsp"%></div>
					<!-- 7 -->
				</div>

				<div id="sub-conteudo">
					<decorator:body />
				</div>
				<!-- 4 -->


			</div>

			<div id="rodape"><%@ include file="rodape.jsp"%></div>
			<!-- 6 -->
	</div>
</body>
</html>