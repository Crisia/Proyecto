<?php

require_once('app/Startup.php');

session_start();
$page = $_SERVER["REQUEST_URI"];
if (strpos($page, "login.php") === false)
{
	$account = $_SESSION['account'];
	if (!$account)
	{
		header("Location:login.php");
	}
}

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistema del Herbario de la Escuela de Ingeniería Forestal</title>
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Bootstrap Core CSS -->
    <link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap DatePicker CSS -->
    <link href="/bower_components/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
    
    <!-- MetisMenu CSS -->
    <link href="/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    
    <!-- Timeline CSS -->
    <link href="/dist/css/timeline.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link href="/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  	<!-- JQUERY JS -->
  	<script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
  	  	
</head>

<body>
    <div class="spinner"><img alt="loading" src="/images/spinner.gif"></div>
    
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/app/html/dashboard.php">Herbario del TEC</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="">
                        <i class="fa fa-user fa-fw"></i>
                        <?=$account->getName()?>
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                      <?php if ($account->checkPermission('SETTING_USER_PROFILE')){ ?>
                        <?php if ($account->checkPermission('SETTING_USER_PROFILE_CHANGE_PASSWORD')){ ?>
                          <li>
                            <a href="/app/html/userProfile.php">
                              <i class="fa fa-user fa-fw"></i> Perfil del usuario
                            </a>
                          </li>
                        <?php }?>
                          <li class="divider"></li>
                      <?php }?>
                          <li>
                            <a href="/app/html/logout.php">
                              <i class="fa fa-sign-out fa-fw"></i> Salir
                            </a>
                          </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                      <?php if ($account->checkPermission('ADMIN')){ ?>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Servicios Administrativos<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="/users/index/">Gentión de Usuarios</a>
                                </li>
                                <li>
                                    <a href="/families/index/">Gentión de Familias</a>
                                </li>
                                <li>
                                    <a href="/colectores/lista/">Gentión de Colectores</a>
                                </li>
                            </ul>
                        </li>
                      <?php }?>
                      <?php if ($account->checkPermission('PENDING')){ ?>
                        <li>
                            <a href="/pending/index/">
                              <i class="fa fa-clock-o fa-fw"></i>Validadar Muestras
                            </a>
                        </li>
                      <?php }?>
                      <?php if ($account->checkPermission('SEARCH')){ ?>
                        <li>
                            <a href="/app/html/search.php">
                              <i class="fa fa-search fa-fw"></i>Realizar Consultas
                            </a>
                        </li>
                      <?php }?>
                      <?php if ($account->checkPermission('NEW')){ ?>
                        <li>
                            <a href="/app/html/newEntry.php">
                              <i class="fa fa-edit fa-fw"></i>Digitar nuevas muestras
                            </a>
                        </li>
                      <?php }?>
 
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        