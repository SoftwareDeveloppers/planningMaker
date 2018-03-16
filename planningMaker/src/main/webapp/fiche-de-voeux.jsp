
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
  function sujets(value)
     {
         var val=value;
        
         $.ajax({
           type: "POST",
           url: "GetSujet",
           data:{ spec: val } ,
           success: function(data) {	
        	   
       	 $('.ajax').html(data);
     }
     });
     }
  </script>
<div class="pcoded-content">
	<div class="pcoded-inner-content">

		<!-- Main-body start -->
		<div class="main-body">
			<div class="page-wrapper">
				<!-- Page-header start -->
				<div class="page-header card">
					<div class="row align-items-end">
						<div class="col-lg-8">
							<div class="page-header-title">
								<i class="icofont icofont-file-code bg-c-blue"></i>
								<div class="d-inline">
									<h4>Fiche De Voeux </h4>
									<span>faites un choix <code>5</code> ou 3
									</span>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="page-header-breadcrumb">
								<ul class="breadcrumb-title">
									<li class="breadcrumb-item"><a href="fiche-de-voeux.html">
											<i class="icofont icofont-home"></i>
									</a></li>
									<li class="breadcrumb-item"><a href="#!">Consultez</a></li>
									<li class="breadcrumb-item"><a href="#!">Fiche de
											voeux</a></li>
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
									<h5>Vous pouvez choisir 5 sujets !</h5>
									<span>ici <code>1-2-3-4-5</code> ici
									</span>
									<div class="card-header-right">
										<i class="icofont icofont-spinner-alt-5"></i>
									</div>

									<div class="card-header-right">
										<i class="icofont icofont-spinner-alt-5"></i>
									</div>

								</div>
								<div class="card-block">
									<h4 class="sub-title">Basic Inputs</h4>
									<form method="post" action="AjouterFicheDeVoeux">
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Specialitée: </label>
											<div class="col-sm-10">
												<select name="specialite" class="form-control" onchange="sujets(value);">
											<option value="opt1">selctioné une sepcialité</option>
											
													<c:forEach var="spec" items="${specialite}">
														<option value="${spec}">${spec}</option>
													</c:forEach>
													
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2 col-form-label">Sujet: </label>
											<div class="ajax col-sm-10">
												<select name="sujet" class="form-control">
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-2"></label>
											<div class="col-sm-10">
												<button type="submit" class="btn btn-primary m-b-0">Validez</button>
											</div>
										</div>
										<input type="hidden" value="${sessionScope.idEtudiant}" name="idEtud">
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
		<!-- Main-body end -->
		<div id="styleSelector"></div>
	</div>
</div>
</div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>

