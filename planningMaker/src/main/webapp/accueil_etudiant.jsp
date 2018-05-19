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
		<div class="page-body m-t-40">
			<div class="row">
				<div class="col-sm-12">
					<!-- Bootstrap slider card start -->
					<div class="card">
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
											src="assets/images/img2.jpg"
											alt="First slide">
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/img1.jpeg"
											alt="Second slide">
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/img4.jpg"
											alt="Third slide">
									</div>
									<!-- div class="carousel-item">
										<img class="d-block img-fluid w-100"
											src="assets/images/img3.jpg"
											alt="Third slide">
									</div-->
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
				

			</div>
		</div>

		<!-- Page body end -->

	</div>
	</div>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
</c:otherwise>
</c:choose>