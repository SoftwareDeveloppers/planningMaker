<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idEtudiant}">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:otherwise>
<jsp:include page="header.jsp"></jsp:include>

<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<!-- Page body start -->
		<div class="page-body">
			<div class="row">
				<div class="col-sm-12">
					<!-- Bootstrap slider card start -->
					<div class="card">
						<div class="card-header">

							<div class="card-header-right">
								<i class="icofont icofont-spinner-alt-5"></i>
							</div>
						</div>
						<div class="card-block">
							<div id="carouselExampleIndicators" class="carousel slide"
								data-ride="carousel">
								<ol class="carousel-indicators">
									<li data-target="#carouselExampleIndicators" data-slide-to="0"
										class="active"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
								</ol>
								<div class="carousel-inner" role="listbox">
									<div class="carousel-item active">
										<img class="d-block img-fluid w-100"
											src="assets/images/agenda-journee-reussir-2018-02-27.jpg"
											alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/post_it_note_make__3015148b.jpg"
											alt="Second slide">
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/3ec7c5c0de932bc_file.jpg"
											alt="Third slide">
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/thumb_835_article_retina.jpeg"
											alt="Third slide">
									</div>
								</div>
								<a class="carousel-control-prev"
									href="#carouselExampleIndicators" role="button"
									data-slide="prev"> <span class="carousel-control-prev-icon"
									aria-hidden="true"></span> <span class="sr-only">Previous</span>
								</a> <a class="carousel-control-next"
									href="#carouselExampleIndicators" role="button"
									data-slide="next"> <span class="carousel-control-next-icon"
									aria-hidden="true"></span> <span class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>
					<!-- Bootstrap slider card end -->
				</div>
				<!-- Client Map Start -->
				<div class="col-md-12 col-xl-8 ">
					<div class="card">
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
												<i class="icofont icofont-ui-user"></i>Nom :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30"> ${etudiant.nom } ${etudiant.prenom }</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-calendar"></i>Date de naissance:
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${etudiant.dateNaissance}</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-email"></i>Email Id :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">
												<a href="mailto:dummy@example.com">${etudiant.email }</a>
											</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-home"></i>Specialite :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${etudiant.specialite }</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-touch-phone"></i>Promotion :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${etudiant.promotion }</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-web"></i>Website :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">
												<a href="#!">http://www.demotheme.com</a>
											</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-fax"></i>Moyenne :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${etudiant.moy }</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Client Map end -->

			</div>
		</div>

		<!-- Page body end -->

	</div>
</div>




<jsp:include page="footer.jsp"></jsp:include>
</c:otherwise>
</c:choose>