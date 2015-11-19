<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title> GeProfi | </title>

    <!-- Bootstrap core CSS -->

    <link href="${pageContext.request.contextPath}/production/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/production/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="${pageContext.request.contextPath}/production/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/icheck/flat/green.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/production/js/jquery.min.js"></script>
   

</head>

<body style="background:#ffffff;"> 
  <div class="container">
	
    <div class="row">
        <div role="main"  style="margin:center; float:none;">
        	
	
	       	<div class="content">
	          <a class="hiddenanchor" id="tologin"></a>
	
	       		 <div id="wrapper">
	          	  <div id="login" class="animate form">
	                <section class="login_content" >
	                    <form>
	                       
	                        <div >                            
	                            <img  src="${pageContext.request.contextPath}/production/images/logoGeProFi.png" class="img-responsive" alt="Imagem Responsiva" height="150" width="350" >
	                                <!-- h1><i class="fa fa-paw" style="font-size: 26px;"></i> GeProFi!</h1-->
	                         </div> 	                         
	                           <div class="clearfix"></div>
	                        	<div class="separator">
	                            <div class="clearfix"></div>
	                                                    
	                         </div>
	                         <div>
	                            <input type="text" class="form-control" placeholder="E-mail" required="" />
	                            <input type="password" class="form-control" placeholder="Senha" required="" />
	                           </div>
	                         <div>
	                         	    
	                          	<a href="${pageContext.request.contextPath}/professores/pfhome?codProfessor=41" class="btn btn-success btn-large" role="button" style="font-size:18px; width:350px;">Entrar</a>                      
	                          </div>
	                          <div class="clearfix"></div>
	                        	<div class="separator">                       
	                          <div class="clearfix"></div>
	                          <div>
	                           <a class="reset_pass" href="formulario" style="font-size:18px; ">Esqueci minha senha</a>	
	                          <a href="${pageContext.request.contextPath}/home/index" class="reset_pass"  style="font-size:18px;">Voltar</a> 
	                         </div>                        
	                         <br />											                        
	                       </form>
	                                                                
	                   </section>  
	                    <br />	
	                   
	            	                
	             </div>
	             
	          </div>
	                
        </div>
        
             </div>
                  </div>
                       </div>
                  
     
</body>
</html>
