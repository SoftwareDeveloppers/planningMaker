<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idEnseignant  && empty sessionScope.idEtudiant && empty sessionScope.idAgent }">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:when test="${ not empty sessionScope.idAgent }">

	
<jsp:include page="header.jsp"></jsp:include>
		
<br><br><br><br>
<div align="center">
<!-- Client Map Start -->
				<div class="col-md-12 col-xl-8 ">
					<div class="card">
				     
					<form>
						<div class="card-block user-detail-card">
						
							<div class="row">
								<div class="col-sm-4">
									<img src="assets/images/avatar-4.jpg " alt=""
										class="img-fluid p-b-10" />

								</div>
								<div class="col-sm-8 user-detail">
									<div class="row">
										<div class="col-sm-5">
										
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-user"></i> Nom :
											</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="nom" id="nom" value="${sessionScope.nom}"></input>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-user"></i> Prenom :
											</h6>
										</div>
										<div class="col-sm-7">
											<input type="text" name="prenom" id="prenom" value="${sessionScope.prenom}"></input>
										</div>
									</div>
									
									
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-email"></i>Email :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">
												<input type="text" name="email" id="email" value="${sessionScope.emailAgent}"></input>
											</h6>
										</div>
									</div>
									</div>
								</div>
							</div> <br><br>
							<button type="submit" class="valider btn btn-primary m-b-0">Modifier</button>
						</div>
						</form>
					</div>
					
				</div>

				
<jsp:include page="footer.jsp"></jsp:include>
</c:when>
<c:otherwise>
</c:otherwise>
</c:choose>
<script type="text/javascript">
$('.valider')
.click(
		function() {
		
									var nom = $("#nom").val();
									var prenom = $("#prenom").val();
									var email = $("#email").val();
									
									$.ajax({
										type : 'POST',
										data : {
											nom : nom,
											prenom : prenom,
											email : email
											
											
											
										},
										url : 'ModifierProfil',
										success : function(resultat) {
											if (resultat == "mailExiste") {
												$
														.growl(
																{
																	icon : '',
																	title : 'Email ',
																	message : 'existe deja!',
																	url : ''
																},
																{
																	element : 'body',
																	type : 'danger',
																	allow_dismiss : true,
																	placement : {
																		from : 'top',
																		align : 'right'
																	},
																	offset : {
																		x : 30,
																		y : 30
																	},
																	spacing : 10,
																	z_index : 999999,
																	delay : 3500,
																	timer : 1000,
																	url_target : '_blank',
																	mouse_over : false,
																	animate : {
																		enter : 'animated fadeInRight',
																		exit : 'animated fadeOutRight'
																	},
																	icon_type : 'class',
																	template : '<div data-growl="container" class="alert" role="alert">'
																			+ '<button type="button" class="close" data-growl="dismiss">'
																			+ '<span aria-hidden="true">&times;</span>'
																			+ '<span class="sr-only">Close</span>'
																			+ '</button>'
																			+ '<span data-growl="icon"></span>'
																			+ '<span data-growl="title"></span>'
																			+ '<span data-growl="message"></span>'
																			+ '<a href="#" data-growl="url"></a>'
																			+ '</div>'
																});

											}  else {
												document.location.href = resultat
											}
										}
									});
							return false;
						});
		</script>