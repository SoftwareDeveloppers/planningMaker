<!DOCTYPE html>
<html lang="en">
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<head>
    <title>Planning Maker </title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8"> <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="bower_components/bootstrap/css/bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css">
    <!-- flag icon framework css -->
    <link rel="stylesheet" type="text/css" href="assets/pages/flag-icon/flag-icon.min.css">
    <!-- Menu-Search css -->
    <link rel="stylesheet" type="text/css" href="assets/pages/menu-search/css/component.css">
    <!-- Syntax highlighter Prism css -->
    <link rel="stylesheet" type="text/css" href="assets/pages/prism/prism.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="assets/css/pcoded-horizontal.min.css">
    <!-- Notification.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/notification.css">
    <!-- Animate.css -->
    <link rel="stylesheet" type="text/css" href="bower_components/animate.css/css/animate.css">
        <!-- Data Table Css -->
    <link rel="stylesheet" type="text/css"
          href="bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="assets/pages/data-table/css/buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css"
          href="bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
          <!-- animation nifty modal window effects css -->
    <link rel="stylesheet" type="text/css" href="assets/css/component.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">

</head>

<body>
    <!-- Pre-loader start -->
   <div class="theme-loader">
    <div class="ball-scale">
        <div class='contain'>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
            <div class="ring"><div class="frame"></div></div>
        </div>
    </div>
</div>
    <!-- Pre-loader end -->

    <div id="pcoded" class="pcoded">
        <div class="pcoded-container"></div>
    
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">

                    <div class="navbar-logo">
                        <a class="mobile-menu" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                        
                        <a href="./AccueilCon">

                            <img class="img-fluid" src="assets/images/logoblan.png" />
                        </a>
                        <a class="mobile-options">
                            <i class="ti-more"></i>
                        </a>
                    </div>

                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                            </li>

                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()">
                                    <i class="ti-fullscreen"></i>
                                </a>
                            </li>
                           
                            
                        </ul>
                        <ul class="nav-right">
                      
                            <li class="user-profile header-notification">
                                <a href="#!">
                                    <img src="assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                    <span>${sessionScope.nom } ${sessionScope.prenom }</span>
                                   
                                    <i class="ti-angle-down"></i>
                                </a>
                                <ul class="show-notification profile-notification">
                                  
                                    <li>
                                        <a href="./Profil">
                                            <i class="ti-user"></i> Profile
                                        </a>
                                    </li>
                                    <li>
                                    <a href="./Deconnexion">
                                        <i class="ti-layout-sidebar-left"></i> Déconnecté
                                    </a>
                                </li>
                                </ul>
                            </li>
                        </ul>
                        
                    </div>
                </div>
            </nav>

            <div class="pcoded-main-container">
             
                    <nav class="pcoded-navbar">
                       <div class="pcoded-inner-navbar">
                       
                            <ul class="pcoded-item pcoded-left-item" style="margin-left: 30%;">
                                    <a href="./AccueilCon">
                                     <img src="assets/images/home.png" style="margin-left:270px; "/>
                                     </a>
							<c:if test="${ !empty(sessionScope.idEnseignant)}">
							
                            <li class="pcoded-hasmenu">
                                <a href="ProposerSujet">
                                    <span class="pcoded-micon" ><i class="ti-layout-cta-right" ></i><b>P</b></span>
                                    <span class="pcoded-mtext" >Proposer Sujet</span>
                                    <span class="pcoded-mcaret" ></span>
                                </a>
                              </li>
                              <li class="pcoded-hasmenu">
                                        <a href="AffectationSujet?etudiantEncadrer=132za&ze">
                                            <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>E</b></span>
                                            <span class="pcoded-mtext">Etudiant Encadrer</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    
                                <li class="pcoded-hasmenu">
                                        <a href="SoutenanceController">
                                            <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>Pl</b></span>
                                            <span class="pcoded-mtext">planning des soutenances</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                              	</c:if>
								
                              
                                <c:if test="${ !empty(sessionScope.idEtudiant)}">
                                    <li class="pcoded-hasmenu">
                                        <a href="AjouterFicheDeVoeux">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i><b>F</b></span>
                                            <span class="pcoded-mtext">Fiche de voeux</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                 <li class="pcoded-hasmenu">
                                <a href="javascript:void(0)">
                                    <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>N</b></span>
                                    <span class="pcoded-mtext">Consulter</span>
                                    <span class="pcoded-mcaret"></span>
                                </a>
                                <ul class="pcoded-submenu">
                                    <li class="">
                                        <a href="ListeSujet">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">liste des sujets</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="AffectationSujet">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Liste affectation des sujets</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    </ul>
                                    <li class="pcoded-hasmenu">
                                        <a href="emploiPlanning.jsp">
                                            <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>Pl</b></span>
                                            <span class="pcoded-mtext">planning des soutenances</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                               </c:if>
                               
                                <c:if test="${ !empty(sessionScope.idAgent)}">
                                <li class="pcoded-hasmenu">
                                <a href="javascript:void(0)">
                                    <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>N</b></span>
                                    <span class="pcoded-mtext">Consulter</span>
                                    <span class="pcoded-mcaret"></span>
                                </a>
                                <ul class="pcoded-submenu">
                                    <li class="">
                                        <a href="EtudiantController?Liste=132za&ze">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">liste des étudiants</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                            
                                    <li class="">
                                        <a href="EnseignantControler?Liste=132za&ze">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">liste des enseignants</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                              
                                    <li class="">
                                        <a href="AgentController?Liste=132za&ze">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">liste des Agents</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li></ul>
                                    <li class="pcoded-hasmenu">
                                <a href="javascript:void(0)">
                                    <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>N</b></span>
                                    <span class="pcoded-mtext">Faire</span>
                                    <span class="pcoded-mcaret"></span>
                                </a>
                                <ul class="pcoded-submenu">
                                     <li class="">
                                        <a href="AffectationSujet">
                                            <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>A</b></span>
                                            <span class="pcoded-mtext"  data-i18n="nav.dash.main">affectation des sujets</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                    <li class="">
                                        <a href="SoutenanceController">
                                            <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>Pl</b></span>
                                            <span class="pcoded-mtext"  data-i18n="nav.dash.main">planning des soutenances</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                              </ul>
                                   
                             
                             
                              
                            <li class="pcoded-hasmenu">
                                <a href="javascript:void(0)">
                                    <span class="pcoded-micon"><i class="ti-layout-cta-right"></i><b>A</b></span>
                                    <span class="pcoded-mtext">Ajouter</span>
                                    <span class="pcoded-mcaret"></span>
                                </a>
                        <ul class="pcoded-submenu">
                                    <li class="">
                                        <a href="ajouter_etudiant.jsp">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Ajouter étudiant</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                            
                                    <li class="">
                                        <a href="ajouter_enseignant.jsp">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Ajouter enseignant</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                            	<c:if test="${ !empty(sessionScope.idAgent)&& sessionScope.idAgent == 1 }">
                                    <li class="">
                                        <a href="ajouter_agentAdmin.jsp">
                                            <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                            <span class="pcoded-mtext" data-i18n="nav.dash.main">Ajouter agent admin</span>
                                            <span class="pcoded-mcaret"></span>
                                        </a>
                                    </li>
                                 </c:if>   
                                 </ul>
                            </li>
                        </ul>
                        </c:if>
         </ul>
     </div>
 </nav>