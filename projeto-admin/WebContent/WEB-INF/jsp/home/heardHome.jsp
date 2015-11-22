<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

      <title>GeProFi-Gerênciador de Projetos Finais</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/production/images/logoGeProFi.png" >

    <!-- Bootstrap core CSS -->

    <link href="${pageContext.request.contextPath}/production/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/production/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="${pageContext.request.contextPath}/production/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/icheck/flat/green.css" rel="stylesheet">
    <!-- editor -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/editor/index.css" rel="stylesheet">
    <!-- select2 -->
    <link href="${pageContext.request.contextPath}/production/css/select/select2.min.css" rel="stylesheet">
    <!-- switchery -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/production/css/switchery/switchery.min.css" />

    <script src="${pageContext.request.contextPath}/production/js/jquery.min.js"></script>

<style type="text/css">
.fileUpload {
    position: relative;
    overflow: hidden;
    margin: 10px;
}
.fileUpload input.upload {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0;
    filter: alpha(opacity=0);
}
</style>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
