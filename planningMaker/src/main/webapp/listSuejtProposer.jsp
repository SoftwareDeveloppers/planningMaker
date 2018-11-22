<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="pcoded-content">
	<div class="pcoded-inner-content">
		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">
				<div class="page-body m-t-40">
					<!-- Page body start -->
					<div class="page-body">

						<div class="row">
							<div class="col-lg-12">
								<!-- Draggable Multiple List card start -->
								<div class="card">

									<div class="card-header">
										<h5 class="card-header-text">Liste des sujets proposé :</h5>
										<div class="card-header-right">
											<i class="icofont icofont-spinner-alt-5"></i>
										</div>
									</div>
									<div class="card-block p-b-0">
										<div class="row">
											<div class="col-md-12">

												<c:forEach items="${ sujets }" var="sujet">
													<div class="sortable-moves ">
														<div class="row">
															<div class="col-sm-2">
																<h5>#${ sujet.specialite}</h5>
															</div>
															<div class="col-sm-10">
																<h6>${ sujet.titre}</h6>
																<p>${ sujet.contenu }</p>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>