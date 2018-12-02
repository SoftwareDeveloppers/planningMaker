
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
					<!-- Page-header start -->
					<div class="page-header card">
						<div class="row align-items-end">
							<div class="col-lg-8">
								<div class="page-header-title">
									<i class="icofont icofont-table bg-c-blue"></i>
									<div class="d-inline">
										<h4>Liste d'affectation des sujets</h4>
										<span>trouver dans cette page la liste d'affectation
											des sujets </span>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="page-header-breadcrumb">
									<ul class="breadcrumb-title">
										<li class="breadcrumb-item"><a href="index.html"> <i
												class="icofont icofont-home"></i>
										</a></li>
										<li class="breadcrumb-item"><a href="#!">Consulter</a></li>
										<li class="breadcrumb-item"><a href="#!">Affectation
												sujets</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Page-header end -->

					<!-- Page-body start -->
					<div class="page-body">
						<div class="row">
							<div class="col-sm-12">
								<c:if test="${remplie}">
									<c:if test="${ !empty(sessionScope.idAgent)}">
									<button type="submit" class="btn hor-grd btn-grd-inverse" data-toggle="modal" data-target="#myModalsupp">Supprimer l'affectation des sujets</button>
									<!-- Modal supp -->
										  <div id="myModalsupp" class="modal fade" role="dialog">
										    <div class="modal-dialog modal-sm">
										      <!-- Modal content-->
										      <div class="modal-content">
										        <div class="modal-body">
										          <p style="text-align:center;"><img src="assets/images/danger.png" />
										          <p style="text-align:center; font-size: 20px;">Voulez allez supprimer toute les affectations ?</p>
											      </div>
											      <div class="modal-footer">           
													<form action="SupprmerSoutenancesController" method="get">
										        <p style="text-align:center;">
										          <button type="button" class="btn btn-light" data-dismiss="modal">Annuler</button>
										          <button type="submit" class="hvr-icon-sink-away btn btn-danger">Supprimer</button>
										        </p>
													 </form> 
											      </div>
											    </div>
											  </div>
											</div>
									</c:if>
									<c:if test="${ !empty(etudiantE)}">
									
										<div class="card">
											<div class="card-header">
												<h5>Attention</h5>
												<span>Des étudiants n'ont pas réussi a obtenir un sujet
												</span>
												<div class="card-header-right">
													<ul class="list-unstyled card-option" style="width: 180px;">
														<li><i
															class="icofont icofont-simple-left icofont-simple-right"></i></li>
														<li><i class="icofont icofont-maximize full-card"></i></li>
														<li><i class="icofont icofont-minus minimize-card"></i></li>
														<li><i class="icofont icofont-refresh reload-card"></i></li>
														<li><i class="icofont icofont-error close-card"></i></li>
													</ul>
												</div>
											</div>
											<div class="card-block table-border-style">
												<div class="table-responsive">
													<table class="table table-styling table-info">
														<thead>
															<tr>
																<th>#</th>
																<th>Nom Prenom</th>
																<th>Spécialite</th>
																<th>Adresse</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${etudiantE}" var="etu">
																<tr>
																	<th scope="row">${etu.getId()}</th>
																	<td>${etu.getNom()} ${etu.getPrenom()}</td>
																	<td>${etu.getSpecialite()}</td>
																	<td>${etu.getEmail()}</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</c:if>
									<!-- Zero config.table start -->
									<div class="card">
										<div class="card-header">

											<div class="card-header-right">
												<i class="icofont icofont-spinner-alt-5"></i>
											</div>
										</div>
										<div class="card-block">
										<p style="font-size: 17; margin: 0;"><b>Exporter : </b></p>
											<div class="dt-responsive table-responsive">
												<table id="simpletablePdf"
													class="table table-striped table-bordered nowrap pdf">
													<thead>
														<tr>
															<th>Etudiant</th>
															<th>Spécialité</th>
															<th>Sujet</th>
															<th>Enseignant</th>

														</tr>
													</thead>
													<tbody>
														<c:forEach items="${ ListAffectation }" var="affectation">
															<tr>
																<td>${ affectation.nomEtudiant} ${ affectation.prenomEtudiant}</td>
																<td>${ affectation.getSpecialiteEtudaint()}</td>
																<td>${ affectation.getTitreSjet()}</td>
																<td>${ affectation.getNomEnseignant()} ${ affectation.getPrenomEnseignant()}</td>
															</tr>
														</c:forEach>
													</tbody>
													<tfoot>

													</tfoot>
												</table>

											</div>
										</div>
									</div>
								</c:if>

								<c:if test="${ !remplie &&  sessionScope.idAgent!=null }">
								
									<form action="AffectationSujet" method="POST">
										<button class="btn hor-grd btn-grd-inverse">Affectation
											des sujets</button>
									</form>
									</br></br>
									
									<div class="card-header" align="center">
												<h5>Aucune affectation pour le moment </h5>
												<span>Il est conseillé de faire l'affectation après que tous les étudiants aient remplie leur fiches de voeux
												</span>
												
											</div>
											<div style="height:3em;"></div>
								</c:if>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
    
$(document).ready(function() {
	
    $('#simpletablePdf').DataTable( {
    	"ordering": true,
    	"order": [[ 1, "asc" ]],
    	paging: true,
        searching: true,
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'pdfHtml5',
                title: 'LISTE DES AFFECTATIONS',
                filename: '*_Liste_Affectation_',
                pageSize: 'A4',
                customize: function ( doc ) {
                	doc.content[1].table.widths = [
                        '26%',
                        '17%',
                        '30%',
                        '26%'
                        ];
                	doc.styles.tableHeader.fillColor  = '#dddddd';
                    doc.styles.tableHeader.color = '#000000';
                    doc.pageMargins = [30, 100, 30, 40 ];//left,top,right
                    var objLayout = {};
                    objLayout['hLineWidth'] = function(i) { return .5; };
                    objLayout['vLineWidth'] = function(i) { return .5; };
                    objLayout['hLineColor'] = function(i) { return '#444444'; };
                    objLayout['vLineColor'] = function(i) { return '#444444'; };
                    objLayout['paddingLeft'] = function(i) { return 4; };
                    objLayout['paddingRight'] = function(i) { return 4; };
                    objLayout['paddingTop'] = function(i) { return 4; };
                    objLayout['paddingBottom'] = function(i) { return 4; };
                    doc.content[1].layout = objLayout;
  var logo ='data:image/png;base64,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';
  doc['header']=(function() {
      return {
        columns: [
        	  {
                image: logo,
                width: 180,
                margin: [10,15]
              },
              
              {
                  alignment: 'right',
                  fontSize: 12,
                  italics: true,
                  text: 'Planning Maker',
                  margin: [10,25]
                }
        ],
        margin: [20,1]
      }
    });
                    doc['footer']=(function(page, pages) {
                        return {
                          columns: [
                            {
                              alignment: 'left',
                              text: ['Developed by: MERIAH Nesrine - ZENAGUI Ibrahim -							TABET AOUL Salim - MEKHEZZEM Reda']
                            },
                            {
                              alignment: 'right',
                              text: ['Page ', { text: page.toString() },  ' sur ', { text: pages.toString() }]
                            }
                          ],
                          margin: [28,0]
                        }
                      });
                  }//customize
            },
            
        ]
    } );
} );
</script>

