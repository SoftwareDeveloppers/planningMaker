<%@page import="dao.AgentDaoImpl"%>
<%@page import="dao.EtudiantDaoImpl"%>
<%@page import="dao.EnseignantDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<c:choose>
	<c:when test="${ empty sessionScope.idAgent}">
		<c:redirect url="Login"></c:redirect>
	</c:when>
	<c:otherwise>
<jsp:include page="header.jsp"></jsp:include>
 
									 <div class="pcoded-content">
                        <div class="pcoded-inner-content">     
                        <div class="page-body m-t-40">
             </br>
                    <div class="row">
                   
                    <!-- user card start -->
                                           <div class="col-sm-4">
                                                <div class="card bg-c-pink text-white widget-visitor-card">
                                                    <div class="card-block-small text-center">
                                                        <h2> 
                                                        <%EtudiantDaoImpl etuDao =new EtudiantDaoImpl();
                                                         int nbrEtu=etuDao.NombreEtudiant();                                                                
                                                         %>
                                                        <%=nbrEtu %></h2>
                                                        <h6>Nombre des étudiants </h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                 <div class="card bg-info text-white widget-visitor-card">                                           
                                                    <div class="card-block-small text-center">
                                                    <h2>
                                                    <%EnseignantDaoImpl ensDao =new EnseignantDaoImpl();
                                                         int nbrEns=ensDao.NombreEnseignant();                                                                
                                                    %>
                                                    <%=nbrEns %>
                                                        </h2>
                                                        <h6>Nombre des enseignants</h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="card bg-c-yellow text-white widget-visitor-card">
                                                    <div class="card-block-small text-center">
                                                        <h2> <%AgentDaoImpl AgDao =new AgentDaoImpl();
                                                         int nbrAg=AgDao.NombreAgent();                                                                
                                                         %>
                                                        <%=nbrAg %></h2>
                                                        <h6>Nombre des agents administratifs</h6>
                                                        <i class="ti-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <!-- user card end -->
                    </div> <!-- row -->
                    
                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
												<div style="height:16em;"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page body end -->
                    
                     </div>
                     
                  </div>  
                  </div> 


<jsp:include page="footer.jsp"></jsp:include>
</c:otherwise>
</c:choose>