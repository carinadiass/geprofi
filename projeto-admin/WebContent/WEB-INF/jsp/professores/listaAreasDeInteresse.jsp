
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<div class="clearfix">
	<c:if test="${not empty professor.codUsuario}">
		<button type="button" class="btn btn-success" data-toggle="modal"
			data-target=".bs-area-modal">
			<i class="glyphicon glyphicon-plus"> </i>Área de Interesse
		</button>
		<div class="modal fade bs-area-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">X</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<i class="glyphicon glyphicon-file"></i> Cadastro de Área de
							Interesse
						</h4>
					</div>
					<div class="modal-body">
						<jsp:include page="formularioAreaDeInteresse.jsp">
							<jsp:param name="professor" value="${professor}" />
							<jsp:param name="areaDeInteresse" value="${areaDeInteresse}" />
							<jsp:param name="areaDeInteresseList" value="${areaDeInteresseList}" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
		<!--DIV class="modal fade bs-example-modal-lg"  -->
	</c:if>
</div>
<hr>

<table id="example3" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <input type="checkbox" class="tableflat">
                                                </th>
                                              	<th>Área</th>
			<th>Nome</th>
			<th>Descricao</th>
			<th>Ação</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                      	<c:forEach var="areaDeInteresse" items="${areaDeInteresseList}" varStatus="id">
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
				<td>${areaDeInteresse.area}</td>
				<td>${areaDeInteresse.nome}</td>
				<td>${areaDeInteresse.descricao}</td>
				<td>
	<c:if test="${not empty professor.codUsuario}">
		<button type="button" class="btn btn-info btn-xs" data-toggle="modal"
			data-target=".bs-area${areaDeInteresse.codAreaDeInteresse}-modal">
			<i class="fa fa-pencil"></i> Editar
		</button>
		<div class="modal fade bs-area${areaDeInteresse.codAreaDeInteresse}-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">X</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<i class="glyphicon glyphicon-file"></i> Cadastro de Área de
							Interesse
						</h4>
					</div>
					<div class="modal-body">
						<jsp:include page="formularioAreaDeInteresse.jsp">
							<jsp:param name="professor" value="${professor}" />
							<jsp:param name="codAreaDeInteresse" value="${areaDeInteresse.codAreaDeInteresse}" />
							<jsp:param name="area" value="${areaDeInteresse.area}" />
							<jsp:param name="nome" value="${areaDeInteresse.nome}" />
							<jsp:param name="descricao" value="${areaDeInteresse.descricao}" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
	</c:if>
			<a href="${linkTo[AreaDeInteresseController].edita}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}"
					class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Editar
				</a> 	<a
					href="${linkTo[AreaDeInteresseController].delete}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}&codUsuario=${professor.codUsuario}"
					onclick="return confirmExclusao()" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
						Excluir </a></td>
			</tr>            	</c:forEach>
                                        
                                        </tbody>

                                    </table>	
<!--

<table class="table table-striped">
	<thead>
		<tr>
			<th>Área</th>
			<th>Nome</th>
			<th>Descricao</th>
			<th>Ação</th>
		</tr>
	</thead>
	<c:forEach var="areaDeInteresse" items="${areaDeInteresseList}" 
		varStatus="id">
		<tbody>
			<tr>
				<td>${areaDeInteresse.area}</td>
				<td>${areaDeInteresse.nome}</td>
				<td>${areaDeInteresse.descricao}</td>
				<td>
	<c:if test="${not empty professor.codUsuario}">
		<button type="button" class="btn btn-info btn-xs" data-toggle="modal"
			data-target=".bs-area${areaDeInteresse.codAreaDeInteresse}-modal">
			<i class="fa fa-pencil"></i> Editar
		</button>
		<div class="modal fade bs-area${areaDeInteresse.codAreaDeInteresse}-modal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">X</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							<i class="glyphicon glyphicon-file"></i> Cadastro de Área de
							Interesse
						</h4>
					</div>
					<div class="modal-body">
						<jsp:include page="formularioAreaDeInteresse.jsp">
							<jsp:param name="professor" value="${professor}" />
							<jsp:param name="codAreaDeInteresse" value="${areaDeInteresse.codAreaDeInteresse}" />
							<jsp:param name="area" value="${areaDeInteresse.area}" />
							<jsp:param name="nome" value="${areaDeInteresse.nome}" />
							<jsp:param name="descricao" value="${areaDeInteresse.descricao}" />
						</jsp:include>
					</div>
				</div>
			</div>
		</div>
	</c:if>
			<a href="${linkTo[AreaDeInteresseController].edita}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}"
					class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Editar
				</a> 	<a
					href="${linkTo[AreaDeInteresseController].delete}?codAreaDeInteresse=${areaDeInteresse.codAreaDeInteresse}&codUsuario=${professor.codUsuario}"
					onclick="return confirmExclusao()" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>
						Excluir </a></td>
			</tr>
	</c:forEach>
	</tbody>
</table> -->




<script>
	function confirmExclusao() {
		if (confirm("Tem certeza que deseja excluir?")) {
			return true;
		} else {
			return false;
		}
	}
</script>

  <!-- Datatables -->
        <script src="${pageContext.request.contextPath}/production/js/datatables/js/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/production/js/datatables/tools/js/dataTables.tableTools.js"></script>
        <script>
            $(document).ready(function () {
                $('input.tableflat').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                });
            });

            var asInitVals = new Array();
            $(document).ready(function () {
                var oTable = $('#example3').dataTable({
                    "oLanguage": {
                        "sSearch": "Busca em todas as colunas:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 10,
                    "sPaginationType": "full_numbers",
                  
                    "tableTools": {
                        "sSwfPath": "<?php echo base_url('assets2/js/Datatables/tools/swf/copy_csv_xls_pdf.swf'); ?>"
                    }
                });
                $("tfoot input").keyup(function () {
                    /* Filter on the column based on the index of this element's parent <th> */
                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                });
                $("tfoot input").each(function (i) {
                    asInitVals[i] = this.value;
                });
                $("tfoot input").focus(function () {
                    if (this.className == "search_init") {
                        this.className = "";
                        this.value = "";
                    }
                });
                $("tfoot input").blur(function (i) {
                    if (this.value == "") {
                        this.className = "search_init";
                        this.value = asInitVals[$("tfoot input").index(this)];
                    }
                });
            });
        </script>