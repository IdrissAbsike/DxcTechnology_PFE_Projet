<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Dashboard</title>
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style><%@ include file="/WEB-INF/views/css/register.css"%></style>
<style><%@ include file="/WEB-INF/views/MANAGER/css/Styledash.css"%></style>
<style><%@ include file="/WEB-INF/views/MANAGER/css/main.css"%></style>
<script type="text/javascript"><%@ include file="/WEB-INF/views/MANAGER/file.js/dash.js"%></script>
</head>  
<%
	if(session.getAttribute("nom1")==null){
		response.sendRedirect("loginPage");
	}
%>
<body>
<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
       <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="/${image_profile}" height="80px" width="80px" style="border-radius: 50%;">
                ADMIN ${nom1} <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li ><a href="doLogout"><i class="fa fa-power-off"></i>Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
            	<li><a href="DashboardAdmin"><img width="200px" height="90px" src="https://assets1.dxc.technology/newsroom/images/dxc_logo_hz_wht_rgb-XXSML.png">
                    </a><a href="DashboardAdmin?nom=${nom1}&prenom=${prenom1}"><i class="fa fa-fw fa-star"></i>ADMIN Dashboard</a>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-users"></i>&nbsp;Utilisateurs <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="ListUsers?nom=${nom1}&prenom=${prenom1}"><i class="fa fa-th-list"></i>&nbsp;Liste des Utilisateurs</a></li>
                        <li><a href="Signup_Form?nom=${nom1}&prenom=${prenom1}"><i class="fa fa-plus"></i>&nbsp;Cree un Utilisateur</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-users"></i>&nbsp;Clients <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="ListClients?nom=${nom1}"><i class="fa fa-th-list"></i>&nbsp;Liste des Clients</a></li>
                        <li><a href="NouvClient?nom=${nom1}"><i class="fa fa-user-plus"></i>&nbsp;Ajouter des Client</a></li>
                    </ul>
                </li>
                <li>
                    <a href="ListProjets?nom=${nom1}"><i class="fa fa-list-alt" aria-hidden="true"></i>&nbsp;Liste des Projets</a>
                </li>
                <li>
                    <a href="sugerencias"><i class="fa fa-tasks" aria-hidden="true"></i>&nbsp;Liste des Phases</a>
                </li>
            </ul>
        </div>
    </nav><br><br>

	<br><br><br>
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <div class="logo" style="text-align: center;"><img src="https://assets1.dxc.technology/newsroom/images/dxc_logo_hz_blk_rgb-XXSML.png"
        			width="30%" height="40%">
        			</div>
                </div>
            </div>
             <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w600">
            <div class="col-md-3 register-left">
                        <img src="https://www.drupal.org/files/dxc_logo_vt_blk_rgb_300.png" 
                        style="height: 160px;width: 160px;"/>
                        <h3>Bienvenue dans l'application ClickDown  ,Gerer Vos Projets</h3>
                    </div>
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Cr�er un nouveau Utilisateur</h2>
                </div>
                <div class="card-body" style="margin-right: 450px;">
                   <form action="/ADMIN/process_register" method="post" enctype="multipart/form-data">
                        <div class="name" style="color:green;margin-left: 60px;">${success}</div>
                        <div class="form-row">
                        	<div class="name">CIN</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="cin">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Prenom</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="prenom">
                            </div><br><br><br>
                            <div class="name">Nom</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="nom">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Telephone</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="telephone">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="email">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <input class="input--style-6" type="password" name="password">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Titre</div>
                            <div class="value">
                                <input class="input--style-6" type="text" name="titre">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Role User</div>
                            <div data-role="controlgroup" data-type="horizontal" data-inline="true">
                            	<select name="role_user"  class="input--style-6"  id="select-choice-1" data-inline="true">
                                            <option selected="selected">--SELECT--</option>
                                            <option>EMPLOYE</option>
                                            <option>MANAGER</option>
                                            <option>ADMIN</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">User Experiance</div>
                              <div data-role="controlgroup" data-type="horizontal" data-inline="true">
								<select name="experiance"  class="input--style-6"  id="select-choice-1" data-inline="true">
                                            <option selected="selected">--SELECT--</option>
                                            <option>Stagiaire</option>
                                            <option>Expert</option>
                                            <option>Senior</option>
                                            <option>Junior</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Upload Photo</div>
                            <div class="value">
                                <div class="input-group js-input-file">
                                    <input class="input-file" type="file" name="file" id="file" required="required">
                                </div> 
                                <div class="label--desc"><strong>Max file size 50 MB</strong></div>
                        	</div>
                        </div>
                        <div class="form-row">
                        <input type="submit" class="btnRegister"  value="Ajouter" />	
                        </div>
							</form>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
   </div>
</body>
<!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Main JS-->
    <script src="js/global.js"></script>
</html>
