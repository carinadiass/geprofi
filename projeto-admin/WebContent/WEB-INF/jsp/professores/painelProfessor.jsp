<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

	
			<div class="" role="tabpanel" data-example-id="togglable-tabs">
									<ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
										<li role="presentation" class="active">
										 	<a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">
										 		 Áreas de Interesse
										 	</a>
										 </li>
										<li role="presentation" class="">
										  <a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">
										         Pojetos Orientados
										   </a>
										</li>
										<li role="presentation" class="">
										  <a href="#tab_content3"  role="tab" id="profile-tab1" data-toggle="tab" aria-expanded="false">
										   		Palavras Chave
										    </a>
										 </li>
								<!--  		<li role="presentation" class="">
										  <a href="#tab_content4" id="profile-tab2" data-toggle="tab" aria-expanded="false">
										     Participação de Bancas
										   </a>
										 </li>-->
										<li role="presentation" class="">
										  <a href="#tab_content5" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">
										   Professores Externos
										   </a>
										 </li>
									<!--	<li role="presentation" class="">
										<a href="#tab_content6" role="tab" id="profile-tab4" data-toggle="tab" aria-expanded="false">
										     Alunos 
										  </a>
										</li>-->
									</ul>
									
									<div id="myTabContent" class="tab-content">  
									
										<!-- INICIO Áreas de Interesse -->
									 <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab" aria-labelledby="home-tab">
										<jsp:include page="listaAreasDeInteresse.jsp">
											<jsp:param name="areaDeInteresseList" value="${areaDeInteresseList}" />
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
										
									</div> <!-- FINAL Áreas de Interesse -->
						
										<!-- INICIO Projetos Orientados -->
										<div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">
										<jsp:include page="listaProjetoOrientados.jsp">
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
											
										</div> 		<!-- FINAL Projetos Orientados -->
									
									
									<!-- INICIO Palavras Chave -->
										<div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab1">
										<jsp:include page="listaPalavrasChave.jsp">
											<jsp:param name="palavraChaveList" value="${palavraChaveList}" />
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
										</div>
										<!-- INICIO Palavras Chave -->
										
										
										
										<!-- 	<div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab2">
										 Em contrução    Participação de Bancas
										
										</div> -->
										
										<div role="tabpanel" class="tab-pane fade" id="tab_content5" aria-labelledby="profile-tab3">
										<jsp:include page="listaProfessoresExternos.jsp">
											<jsp:param name="professorExternoList" value="${professorExternoList}" />
											<jsp:param name="professor" value="${professor}" />
										</jsp:include>
										
										</div>
										<div role="tabpanel" class="tab-pane fade" id="tab_content6" aria-labelledby="profile-tab4">
											Em contrução  Convites de Projetos
										
										
										</div>
										
									</div>
								</div>