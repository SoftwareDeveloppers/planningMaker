		<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
	<jsp:include page="header.jsp"></jsp:include>

	<script type="text/javascript" src="assets/js/jquery-1.6.min.js>"></script>
	
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">

                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                 <div class="page-body m-t-40">
                                <!-- Page-header start -->
                                    <div class="page-header card">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <i class="icofont icofont-file-code bg-c-blue"></i>
                                                    <div class="d-inline">
                                                        <h4>Proposer Sujets </h4>
                                                        <span>Vous devez remplir touts les champs <c:out value="${ nombre_de_sujet }"></c:out></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                   <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item">
                                                            <a href="fiche-de-voeux.html">
                                                                <i class="icofont icofont-home"></i>
                                                            </a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Consultez</a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Ajouter un sujet</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->
                                   <!--/*********************************************************************************************-->
                                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                        	 <div class="col-sm-1"></div>
                                            <div class="col-sm-10">
                                               <!-- Basic Form Inputs card start -->
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Veuillez proposer votre sujet :</h5>
                                                    
                                                    <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>

                                                    <div class="card-header-right">
                                                        <i class="icofont icofont-spinner-alt-5"></i>
                                                    </div>

                                                </div>
                                                <div class="card-block">
                                                    
                                                    <form>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Specialité*:</label>
                                                            
                                                                <select id="idSelect" name="select" class="form-control" required>
                                                                    <option value="opt1">Selectioner spécialitée</option>
                                                                    <option value="GL">GL</option>
                                                                    <option value="RSD">RSD</option>
                                                                    <option value="SIC">SIC</option>
                                                                    <option value="MID">MID</option>
                                                                </select>
                                                            
                                                        </div> 
                                                       
                                                        <div class="form-group">
									                        <label for="exampleInputEmail1">Titre*:</label>
									                        <input id="idTitre" type="text" name="titre" class="form-control"  placeholder="Titre" required>
									                    </div>
									                    
									                    <div class="form-group">
									                        <label for="exampleTextarea">Description*:</label>
									                        <textarea id="idDesc" class="form-control" name="desc" id="exampleTextarea" rows="10" required></textarea>
									                    </div>
                                                        
                                                        <div class="form-group row">
                                                                <label class="col-sm-2"></label>
                                                                <div class="col-sm-8">
                                                                    <button type="submit" class="btn btn-primary m-b-0" id="btnAjouter">Ajouter</button>
                                                                    <button class="btn btn-primary waves-effect" data-type="inverse" data-animation-in="animated bounceInRight" data-animation-out="animated bounceOutRight">Annuler</button>
                                                                </div>
                                                            </div>
                                                    </form>
                                                        
                                                </div>
                                            </div>
                                            <!-- Basic Form Inputs card end -->
                                            </div>
                                           <div class="col-sm-1"></div>
                                        </div>
                                    </div>
                                    
                                    <!-- Page body end -->
                                    <!--/*********************************************************************************************-->
                                </div>
                                </div>
                            </div>
                            <!-- Main-body end -->
                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
  
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
    'use strict';
$(window).on('load',function(){
    function notify(message, type){
        $.growl({
            message: message
        },{
            type: type,
            allow_dismiss: false,
            label: 'Cancel',
            className: 'btn-xs btn-inverse',
            placement: {
                from: 'bottom',
                align: 'right'
            },
            delay: 3500,
            animate: {
                    enter: 'animated fadeInRight',
                    exit: 'animated fadeOutRight'
            },
            offset: {
                x: 30,
                y: 30
            }
        });
    };
        notify('il vous reste <c:out value="${ 5 - nombre_de_sujet }"></c:out> sujets a proposé ', 'inverse');
   
});

$('#btnAjouter').click(function(){
	
	var select = $('select#idSelect').val();
	var titre = $('input#idTitre').val();
	var desc = $('textarea#idDesc').val();
	$.ajax({
		type:'POST',
		data: {
			select : select,
			titre : titre,
			desc : desc
		},
		url:'ProposerSujet',
		success: function(resultat){
			if (resultat == "ok") {
				        $.growl({
				            icon: '',
				            title: 'Succès ',
				            message: 'Sujet est bien ajouter',
				            url: ''
				        },{
				            element: 'body',
				            type: 'success',
				            allow_dismiss: true,
				            placement: {
				                from: 'top',
				                align: 'right'
				            },
				            offset: {
				                x: 30,
				                y: 30
				            },
				            spacing: 10,
				            z_index: 999999,
				            delay: 3500,
				            timer: 1000,
				            url_target: '_blank',
				            mouse_over: false,
				            animate: {
				                enter: 'animated fadeInRight',
				                exit: 'animated fadeOutRight'
				            },
				            icon_type: 'class',
				            template: '<div data-growl="container" class="alert" role="alert">' +
				            '<button type="button" class="close" data-growl="dismiss">' +
				            '<span aria-hidden="true">&times;</span>' +
				            '<span class="sr-only">Close</span>' +
				            '</button>' +
				            '<span data-growl="icon"></span>' +
				            '<span data-growl="title"></span>' +
				            '<span data-growl="message"></span>' +
				            '<a href="#" data-growl="url"></a>' +
				            '</div>'
				        });
				    
			}
			else if (resultat == "pasok") {
				 $.growl({
			            icon: '',
			            title: 'Erreur ',
			            message: 'vous aver deja proposer 5 sujets ',
			            url: ''
			        },{
			            element: 'body',
			            type: 'danger',
			            allow_dismiss: true,
			            placement: {
			                from: 'top',
			                align: 'right'
			            },
			            offset: {
			                x: 30,
			                y: 30
			            },
			            spacing: 10,
			            z_index: 999999,
			            delay: 4500,
			            timer: 1000,
			            url_target: '_blank',
			            mouse_over: false,
			            animate: {
			                enter: 'animated fadeInRight',
			                exit: 'animated fadeOutRight'
			            },
			            icon_type: 'class',
			            template: '<div data-growl="container" class="alert" role="alert">' +
			            '<button type="button" class="close" data-growl="dismiss">' +
			            '<span aria-hidden="true">&times;</span>' +
			            '<span class="sr-only">Close</span>' +
			            '</button>' +
			            '<span data-growl="icon"></span>' +
			            '<span data-growl="title"></span>' +
			            '<span data-growl="message"></span>' +
			            '<a href="#" data-growl="url"></a>' +
			            '</div>'
			        });
				
			}
			else {
				 $.growl({
			            icon: '',
			            title: 'Erreur ',
			            message: 'inconnu !! ',
			            url: ''
			        },{
			            element: 'body',
			            type: 'danger',
			            allow_dismiss: true,
			            placement: {
			                from: 'top',
			                align: 'right'
			            },
			            offset: {
			                x: 30,
			                y: 30
			            },
			            spacing: 10,
			            z_index: 999999,
			            delay: 4500,
			            timer: 1000,
			            url_target: '_blank',
			            mouse_over: false,
			            animate: {
			                enter: 'animated fadeInRight',
			                exit: 'animated fadeOutRight'
			            },
			            icon_type: 'class',
			            template: '<div data-growl="container" class="alert" role="alert">' +
			            '<button type="button" class="close" data-growl="dismiss">' +
			            '<span aria-hidden="true">&times;</span>' +
			            '<span class="sr-only">Close</span>' +
			            '</button>' +
			            '<span data-growl="icon"></span>' +
			            '<span data-growl="title"></span>' +
			            '<span data-growl="message"></span>' +
			            '<a href="#" data-growl="url"></a>' +
			            '</div>'
			        });
			}
					
		}
	});
	return false;
});

    </script>

