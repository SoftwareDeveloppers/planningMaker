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
				
				<div class="row">
				<div class="col-sm-12">
					<div class="card">
						<div class="card-block">
						<div class="row">
						<div class="col-sm-1"></div>
						<div class="col-sm-2"><h5>Vous êtes avancé a :</h5></div>
						<div class="col-sm-7">
						<div class="progress">
						  <div class="progress-bar progress-bar-success progress-bar-striped " role="progressbar"
						  aria-valuenow="${etudiant.taux}" aria-valuemin="0" aria-valuemax="100" style="width:${etudiant.taux}%">
						   ${etudiant.taux}%
						  </div>
						</div>
						</div>
						<div class="col-sm-2"></div>
 						</div>	
						</div>
					</div>
				</div>
				</div>
				
				<div class="row">
				<div class="col-sm-5">
					<div class="card">
						<div class="card-block">
							<div class="sub-title"><h5>Votre Affectation</h5></div>
                                     <div class="tab-content tabs card-block">
                                     <c:if test="${!empty sujet.id }">
                                     <div class="tab-pane active">
                                    <p class="m-0">
                                    <h6><b>Titre: </b>${sujet.titre}</h6></br>
                                    ${sujet.contenu}
                                    </p>
                                    </div>	</c:if>
                                    <c:if test="${empty sujet.id }"><p>Aucune affectation pour le moment</p></c:if>
                                    </div>
						</div>
					</div>
				</div>
			
			<div class="col-sm-7">
					<div class="card">
						<div class="card-block">
						<h5>Remarque de l'encadreur:</h5></br>
						<div class="card-block accordion-block">
										
											
                                                      <div id="accordion" role="tablist" aria-multiselectable="true">
                                                      <c:if test="${!empty remarques }">
                                                        <c:forEach items="${remarques }" var="remarque">
                                                            <div class="accordion-panel">
                                                                <div class=" accordion-heading" role="tab" id="headingThree">
                                                                    <h3 class="card-title accordion-title">
                                                                    <a class="accordion-msg" data-toggle="collapse"
                                                                       data-parent="#accordion" href="#collapse${remarque.id}"
                                                                       aria-expanded="false"
                                                                       aria-controls="collapseThree">
                                                                        <p style="font-size: 15px">${remarque.titre}  (${remarque.date}) >></p>
                                                                    </a>
                                                                </h3>
                                                                </div>
                                                                <div id="collapse${remarque.id}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                                    <div class="accordion-content accordion-desc">
                                                                        <p>
                                                                        	${remarque.contenu}
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                             </c:forEach>
                                                             </c:if>
                                                        </div>
                                               
                                             
                                             <c:if test="${empty remarques }">Aucune remarque</c:if>
                                                    </div>
						</div>
					</div>
				</div>
			
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