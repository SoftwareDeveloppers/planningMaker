<!DOCTYPE html>
<html lang="fr">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
 response.setHeader("Pragma","no-cache"); //HTTP 1.0 
 response.setDateHeader ("Expires", 0); //prevents caching at the proxy server  
%>
<title>Planning Maker</title>
<!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="#">
<meta name="keywords"
	content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
<meta name="author" content="#">
<!-- Favicon icon -->


<link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="bower_components/bootstrap/css/bootstrap.min.css">

<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="login/style.css">
<!-- Notification.css -->
    <link rel="stylesheet" type="text/css" href="assets/css/notification.css">
    <!-- Animate.css -->
    <link rel="stylesheet" type="text/css" href="bower_components/animate.css/css/animate.css">


</head>


<body class="fix-menu">
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="ball-scale">
			<div class='contain'>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->

	<section
		class="login p-fixed d-flex text-center bg-primary common-img-bg">
		<!-- Container-fluid starts -->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<!-- Authentication card start -->
					<div class="login-card card-block auth-body mr-auto ml-auto">
						<form class="md-float-material">
							<div class="text-center">
								<img src="login/img/logo.png" alt="logo.png">
							</div>
							<div class="auth-box">
								<div class="row m-b-20">
									<div class="col-md-12">
										<h3 class="text-left txt-primary">Se connecter</h3>
									</div>
								</div>
								<hr />
								<div class="input-group">
									<input type="email" class="form-control"
										placeholder="Votre adresse email" name="user" id="idUser"> <span
										class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" class="form-control"
										placeholder="Mot de passe" name="pw" id="idPw"> <span
										class="md-line"></span>
								</div>

								<div class="row m-t-30">
									<div class="col-md-12">
										<button type="submit" style="color:#2ECC71"
											id="ok"class="btn btn-round btn-md btn-block waves-effect text-center m-b-20">
											Connecté</button>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="col-md-8">
										<p class="text-inverse text-left m-b-0">Planifier les
											projets de fin études</p>
										<p class="text-inverse text-left">
											<b>Faculté des sciences</b>
										</p>
									</div>
									<div class="col-md-4">
										<img src="login/img/m.png" alt="small-logo.png">
									</div>
								</div>


							</div>
						</form>

						<!-- end of form -->
					</div>
					<!-- Authentication card end -->
				</div>
				<!-- end of col-sm-12 -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container-fluid -->
	</section>
	<script type="text/javascript" src="bower_components/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="bower_components/jquery-ui/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="bower_components/popper.js/js/popper.min.js"></script>
<script type="text/javascript" src="bower_components/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="assets/js/script.js"></script>

      <!-- notification js -->
 <script type="text/javascript" src="assets/js/bootstrap-growl.min.js"></script>
 <script type="text/javascript">
 $('#ok').click(function(){
		
		var user = $('#idUser').val();
		var mdp = $('#idPw').val();
		$.ajax({
			type:'POST',
			data: {
				user : user,
				mdp : mdp
			},
			url:'Login',
			success: function(resultat){
				if (resultat == "erreur") {  
					 $.growl({
				            icon: '',
				            title: 'Erreur ',
				            message: 'email ou mot de passe incorrect',
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
				else{
					document.location.href=resultat
				}
			}
		});
		return false;
	});

 
 
 </script>

</body>
</html>
