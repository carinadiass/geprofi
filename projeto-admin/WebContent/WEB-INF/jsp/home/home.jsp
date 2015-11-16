<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>GeProFi-Gerenciador de Projetos Finalizados</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/css/clean-blog.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
                <!-- a class="navbar-brand" href="index.html">Start Bootstrap</a-->
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
	                    <li>
	                        <a href="${pageContext.request.contextPath}/home/home">Pagina inicial</a>
	                    </li>
	                    <li>
	                        <a href="${pageContext.request.contextPath}/home/projetosFinalizados">Projetos finalizados</a>
	                    </li>
	                    <li>
	                         <a href="${pageContext.request.contextPath}/home/areadeInteresse" >Area de interesse</a>
	                    </li>
	                     
	                     <!-- li class="dropdown">
	                     
	                     
	                      	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Area de interesse <span class="caret"></span></a>
	        				  <ul class="dropdown-menu" role="menu" >
	                     
	                        		<li>  <a style="background-color: rgb(0,0,0) transparent;">Professores</a></li>                       	
	                        		<li>  <a href="/projeto-admin/production/contacts.html" style="background-color: rgb(0,0,0) transparent;">Areas</a></li>
	                        	</ul>
	                      </li-->
	                    
	                  	  <li>
	                        <a href="${pageContext.request.contextPath}/login/login">Entrar</a>
	                      </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/img/capa.jpg')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1> GeProFi</h1>
                        <hr class="small">
                        <span class="subheading">Gerenciador de Projetos Finais</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview">
                       <img src="${pageContext.request.contextPath}/production/images/logoGeProFi.png" style="float: left; margin-top: 0px; width: 100px; height: 50px; background-image: buttonhighlight;" >
                        <!-- h4 class="post-title"--
                            Sobre-
                        </h4-->
                        <br>
                         <br>
                        <h3 class="post-subtitle">
                            Gerenciador de Projetos Finais, onde os alunos......
                        </h3>
                    <p class="post-meta">Posted by <a href="#">Start Bootstrap</a> on September 24, 2014</p>
                </div>
                <hr>
                
                <hr>
                <!-- Pager -->
                
            </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    
                    <p class="copyright text-muted">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/startbootstrap-clean-blog-1.0.3/js/clean-blog.min.js"></script>

</body>

</html>
