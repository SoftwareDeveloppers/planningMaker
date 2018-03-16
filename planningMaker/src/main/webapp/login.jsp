<!DOCTYPE html>
<html lang="fr">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>GURU Able - Premium Admin Template</title>
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

<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800"
	rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="bower_components/bootstrap/css/bootstrap.min.css">

<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="login/style.css">


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
						<form class="md-float-material" method="post" action="Login">
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
										placeholder="Votre adresse email" name="user"> <span
										class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" class="form-control"
										placeholder="Mot de passe" name="pw"> <span
										class="md-line"></span>
								</div>

								<div class="row m-t-30">
									<div class="col-md-12">
										<button type="submit"
											class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">
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
	<jsp:include page="footer.jsp"></jsp:include>