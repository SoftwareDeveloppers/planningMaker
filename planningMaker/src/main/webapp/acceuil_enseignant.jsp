<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idEnseignant}">
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
												<i class="icofont icofont-ui-user"></i>Nom et Prenom :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30"> ${sessionScope.nom } ${sessionScope.prenom }</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-calendar"></i>Date de naissance:
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30"> ${sessionScope.dateN }</h6>
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
												<a href="mailto:dummy@example.com"> ${sessionScope.emailEnseignant }</a>
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
											<h6 class="m-b-30">${sessionScope.specEnseignant}</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-ui-touch-phone"></i>grade :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${sessionScope.gradeEnseignant}</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-web"></i>telephone :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">
												<a  class="m-b-30">${sessionScope.telephone}</a>
											</h6>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-5">
											<h6 class="f-w-400 m-b-30">
												<i class="icofont icofont-fax"></i>sexe :
											</h6>
										</div>
										<div class="col-sm-7">
											<h6 class="m-b-30">${sessionScope.sexe}</h6>
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
		</div>
<!-- Notes card start -->
                                                <div class="card">
                                                    <div class="card-block note-card">
                                                        <div class="note-box-wrapper row">
                                                            <div class="note-box-aside col-lg-12 col-xl-3">
                                                                <div class="row">
                                                                    <div class="col-2">
                                                                        <h5><i class="icofont icofont-file-text m-r-5"></i></h5>
                                                                    </div>
                                                                    <div class="col-10">
                                                                        <input class="form-control form-control-lg" type="text" id="Note-search" placeholder="Search notes">
                                                                    </div>
                                                                </div>
                                                                <div class="notes-list">
                                                                    <ul id="Note-list" class="Note-list list-group"></ul>
                                                                </div>
                                                            </div>
                                                            <div class="note-box-content col-lg-12 col-xl-9">
                                                                <div class="Note-header">
                                                                    <div class="Note-created f-right">
                                                                        <span class="Note-created__on">Note Created On</span>
                                                                        <span class="Note-created__date" id="Note-created__date"></span>
                                                                    </div>
                                                                    <a href="#" class="btn btn-md btn-primary hidden-xs Note-add">Add New +</a>
                                                                </div>
                                                                <div class="note-body">
                                                                    <div class="note-write">
                                                                        <textarea id="Note-pad" class="form-control" placeholder="Type your note here" rows="10"></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Notes card end -->
		<!-- Page body end -->

	</div>
</div>




<jsp:include page="footer.jsp"></jsp:include>
</c:otherwise>
</c:choose>