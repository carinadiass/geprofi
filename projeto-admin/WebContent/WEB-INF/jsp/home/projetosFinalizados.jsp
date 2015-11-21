
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GeProFi-Gerenciador de Projetos Finais</title>

    <!-- Bootstrap core CSS -->

    <link href="${pageContext.request.contextPath}/production/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/production/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="${pageContext.request.contextPath}/production/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/production/css/icheck/flat/green.css" rel="stylesheet">


    <script src="${pageContext.request.contextPath}/production/js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

    <div class="container body">


        <div class="main_container">

            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="${pageContext.request.contextPath}/home/home" class="site_title"><span>GeProFi</span></a>
                    </div>
                    <div class="clearfix"></div>


                    <!-- menu prile quick info -->
                    <div class="profile">
                        <!-- div class="profile_pic">
                            <img src="${pageContext.request.contextPath}/production/images/logoGeProFi.png" alt="..." class="img-circle profile_img">
                        </div-->
                       
                    </div>
                
                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            
                            <ul class="nav side-menu">
                            <br>
                                <li><a><i class="fa fa-home"></i> Areas de interesses <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="${pageContext.request.contextPath}/home/areaPorProfessor">Professores</a>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/home/areaPorArea"> Areas </a>
                                        </li>
                                     </ul>
                                </li>
                                </ul>
                        </div>
                       </div>

                    </div>
                 </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        
                           <ul>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false"></a>
                                  
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                   
                                </ul>
                            </li>
                          </ul>

                    </nav>
                </div>

            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>
                 			  Projetos Finalizados            
               				 </h3>
                        </div>

                        
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                           
                                       
                                   
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <input type="checkbox" class="tableflat">
                                                </th>
                                                <th>Título </th>
                                                <th>Tema </th>
                                                <th>Descrição</th>
                                                <th>Ano </th>
                                                <th>Palavras-Chave </th>  
                                                <th class=" no-link last"><span class="nobr">Arquivo</span>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach var="projeto" items="${ListPorjetos}" varStatus="id">
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">${projeto.titulo}</td>
                                                <td class=" ">${projeto.tema}</td>
                                                <td class=" ">${projeto.descricao}</td>
                                                <td class=" "> <fmt:formatDate	value="${projeto.dataCadastro}" pattern="yyyy" /> </td>
                                                
                                                <td class=" ">${projeto.palavraChave}</td>  
                                                <td class=" last"><a
										href="${linkTo[HomeController].downloadMonografia}?codProjeto=${projeto.codProjeto}"><i class="fa fa-download"></i> Monografia</a>
                                                </td>
                                            </tr>
                                         	</c:forEach>
                                        
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>

                        <br />
                        <br />
                        <br />

                    </div>
                </div>
                    <!-- footer content -->
                <!-- footer content -->
                <footer>
                    <div class="">
                        <p class="pull-right"> Desenvolvido por Carina Dias e Domingas Andrade. 
                            <span class="lead">  GeProFi!</span>
                        </p>
                    </div>
                   
                </footer>
                <!-- /footer content -->
                <!-- /footer content -->
                    
                </div>
                <!-- /page content -->
            </div>

        </div>

        <div id="custom_notifications" class="custom-notifications dsp_none">
            <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
            </ul>
            <div class="clearfix"></div>
            <div id="notif-group" class="tabbed_notifications"></div>
        </div>

        <script src="${pageContext.request.contextPath}/production/js/bootstrap.min.js"></script>

        <!-- chart js -->
        <script src="${pageContext.request.contextPath}/production/js/chartjs/chart.min.js"></script>
        <!-- bootstrap progress js -->
        <script src="${pageContext.request.contextPath}/production/js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="${pageContext.request.contextPath}/production/js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="${pageContext.request.contextPath}/production/js/icheck/icheck.min.js"></script>

        <script src="js/custom.js"></script>


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
                var oTable = $('#example').dataTable({
                    "oLanguage": {
                        "sSearch": "Busca em todas as colunas:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 3,
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
</body>

</html>