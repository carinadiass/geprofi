<jsp:include page="../home/heardHome.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>


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
	                        	<div class="separator">    </div>                   
	                          <div>
	                           <a class="reset_pass" href="${pageContext.request.contextPath}/login/esqueceuSenha" style="font-size:18px; ">Esqueceu sua senha?</a>	
	                          <a href="${pageContext.request.contextPath}/home/home" class="reset_pass"  style="font-size:18px;">Voltar</a> 
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
     <!-- INICIO DECLA  -->
    <script src="${pageContext.request.contextPath}/production/js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="${pageContext.request.contextPath}/production/js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="${pageContext.request.contextPath}/production/js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="${pageContext.request.contextPath}/production/js/icheck/icheck.min.js"></script>

    <script src="${pageContext.request.contextPath}/production/js/custom.js"></script>

    <!-- image cropping -->
    <script src="${pageContext.request.contextPath}/production/js/cropping/cropper.min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/cropping/main.js"></script>

    
    <!-- daterangepicker -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/moment.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/production/js/datepicker/daterangepicker.js"></script>
    <!-- moris js -->
    <script src="${pageContext.request.contextPath}/production/js/moris/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/production/js/moris/morris.js"></script>
</body>
</html>


