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

                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for...">
                                    <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Ok</button>
                        </span>
                                </div>
                            </div>
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
                                                <th>Nome </th>
                                                <th>Tema </th>
                                                <th>Titulo </th>
                                                <th>Descri��o </th>
                                                <th>Alunos </th>
                                                <th>Ano </th>
                                                <th class=" no-link last"><span class="nobr">Action</span>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer selected">
                                                <td class="a-center ">
                                                    <input type="checkbox" checked class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>

                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer selected">
                                                <td class="a-center ">
                                                    <input type="checkbox" checked class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>

                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer selected">
                                                <td class="a-center ">
                                                    <input type="checkbox" checked class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>

                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 23, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 23, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer selected">
                                                <td class="a-center ">
                                                    <input type="checkbox" checked class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 24, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203 <i class="success fa fa-long-arrow-up"></i>
                                                </td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 24, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 24, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 26, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208 <i class="error fa fa-long-arrow-down"></i>
                                                </td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000038</td>
                                                <td class=" ">May 26, 2014 10:55:33 PM</td>
                                                <td class=" ">121000203</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$432.26</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000037</td>
                                                <td class=" ">May 26, 2014 10:52:44 PM</td>
                                                <td class=" ">121000204</td>
                                                <td class=" ">Mike Smith</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$333.21</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>

                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000040</td>
                                                <td class=" ">May 27, 2014 11:47:56 PM </td>
                                                <td class=" ">121000210</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$7.45</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
                                            <tr class="odd pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="tableflat">
                                                </td>
                                                <td class=" ">121000039</td>
                                                <td class=" ">May 28, 2014 11:30:12 PM</td>
                                                <td class=" ">121000208</td>
                                                <td class=" ">John Blank L</td>
                                                <td class=" ">Paid</td>
                                                <td class="a-right a-right ">$741.20</td>
                                                <td class=" last"><a href="#">View</a>
                                                </td>
                                            </tr>
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
                        "sSearch": "Search all columns:"
                    },
                    "aoColumnDefs": [
                        {
                            'bSortable': false,
                            'aTargets': [0]
                        } //disables sorting for column one
            ],
                    'iDisplayLength': 12,
                    "sPaginationType": "full_numbers",
                    "dom": 'T<"clear">lfrtip',
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