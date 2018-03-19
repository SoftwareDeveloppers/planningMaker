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
           url: "ListeSujet",
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
				<!-- Page body start -->
				<div class="page-body">
				
					<div class="row">
							<div class="col-lg-12">
                                 <!-- Draggable Multiple List card start -->
                                         <div class="card">
                                
                                                    <div class="card-header">
                                                        <h5 class="card-header-text">Liste des sujets proposé :</h5>
                                                        <div class="card-header-right"><i class="icofont icofont-spinner-alt-5"></i></div>
                                                    </div>
                                                    <div class="card-block p-b-0">
                                                   		 <form method="post" action="ListeSujet">
															<div class="form-group row">
																<label class="col-sm-2 col-form-label">Specialitée:</label>
																<div class="col-sm-6">
																	<select name="specialite" class="form-control" onchange="sujets(value);">
																	<option value="">Veuillez selectionné votre sepcialité</option>
																	
																	<c:forEach var="spec" items="${specialite}">
																		<option value="${spec}">${spec}</option>
																	</c:forEach>
																			
																	</select>
																</div>
															</div>
														 </form>
                                                        <div class="row">
                                                            <div class="col-md-12 ajax" id="draggableMultiple">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Draggable Multiple List card end -->
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