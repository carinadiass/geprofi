<jsp:include page="../home/heardHome.jsp">
	<jsp:param value="teste" name="1"/>
</jsp:include>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

 <div class="row">
        <div role="main"  style="margin:center; float:none;">
        	
	
	       	<div class="content">
	          <a class="hiddenanchor" id="tologin"></a>
	
	       		 <div id="wrapper">
	          	  <div id="login" class="animate form">
	                <section class="login_content" >

				<form id="formArea" class="form-horizontal" role="form" accept-charset="UTF-8"
				action="${linkTo[LoginController].esqueceuSenha}?email=${email}" method="POST"
				data-fv-framework="bootstrap"
				data-fv-icon-valid="glyphicon glyphicon-ok"
				data-fv-icon-invalid="glyphicon glyphicon-remove"
				data-fv-icon-validating="glyphicon glyphicon-refresh">
				
					<div class="form-group">
						<label 
							for="nome">Informe seu e-mail </label>
						<div>
							<input type="text" class="form-control input-sm" id="area"
								value="${email}" name="email" />
						</div>
					</div>
					<button type="button" class="btn btn-success">
			<i class="glyphicon glyphicon-plus"> </i>Enviar
		</button>
			</form>

		               </section>  
	                    <br />	
	                   
	            	                
	             </div>
	             
	          </div>
	                
        </div>


     </div>
	                
        </div>



