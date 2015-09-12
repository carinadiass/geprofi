<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html ng-app>
<head>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <meta charset="utf-8">
    <title>Meus Contatos</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href=<c:url value="../node_modules/bootstrap/dist/css/bootstrap.css"/> />
    <link rel="stylesheet" href=<c:url value="../node_modules/styles/style.css"/> />
</head>
<body ng-app="projetoadmin">
<div class="container">

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#/">Meus Contatos</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="#/">Home</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                    <li><a href="#">Sobre</a></li>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div ng-view>
        Nothing here {{'yet' + '!'}}
        <p>1 + 2 = {{ 1 + 2 }}</p>
        <!-- Aqui vai o código das views-->

    </div>

</div>
<script src=<c:url value="../node_modules/jquery/dist/jquery.js"/>></script>
<script src=<c:url value="../node_modules/angular/angular.js"/>></script>
<script src=<c:url value="../node_modules/bootstrap/dist/js/bootstrap.js"/>></script>
<script src=<c:url value="../node_modules/angular-resource/angular-resource.js"/>></script>
<script src=<c:url value="../node_modules/angular-route/angular-route.js"/>></script>
<script src=<c:url value="../node_modules/js/app.js"/>></script>
<script src=<c:url value="../node_modules/js/controllers/main.js"/>></script>

</body>
<html>