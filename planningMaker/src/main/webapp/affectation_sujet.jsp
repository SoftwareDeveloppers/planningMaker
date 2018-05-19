  	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                                    <span>trouver dans cette page </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="page-header-breadcrumb">
                                                <ul class="breadcrumb-title">
                                                    <li class="breadcrumb-item">
                                                        <a href="index.html">
                                                            <i class="icofont icofont-home"></i>
                                                        </a>
                                                    </li>
                                                    <li class="breadcrumb-item"><a href="#!">Consulter</a>
                                                    </li>
                                                    <li class="breadcrumb-item"><a href="#!">Affectation sujets</a>
                                                    </li>
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
                         
                                       <button class="btn hor-grd btn-grd-inverse" onclick="action();">affectation des sujets </button>
                                 
                                       </br>    </br>  
                                            <!-- Zero config.table start -->
                                            <div class="card">
                                                <div class="card-header">

                                                    <div class="card-header-right"><i
                                                            class="icofont icofont-spinner-alt-5"></i></div>
                                                </div>
                                                <div class="card-block">
                                                    <div class="dt-responsive table-responsive">
                                                        <table id="simpletable"
                                                               class="table table-striped table-bordered nowrap">
                                                            <thead>
                                                            <tr>
                                                                <th>Nom et prenom</th>
                                                                <th>Branche</th>
                                                                <th>Specialité</th>
                                                                <th>Sujet</th>
                                                                <th>Encadreur </th>
                                                                
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                               
                                                                <tr>
                                                                    <td>Garrett Winters</td>
                                                                    <td>Accountant</td>
                                                                    <td>Tokyo</td>
                                                                    <td>63</td>
                                                                    <td>2011/07/25</td>
                                                                  
                                                                </tr>
                                                                <tr>
                                                                    <td>Ashton Cox</td>
                                                                    <td>Junior Technical Author</td>
                                                                    <td>San Francisco</td>
                                                                    <td>66</td>
                                                                    <td>2009/01/12</td>
                                                                    
                                                                </tr>
                                                                <tr>
                                                                    <td>Cedric Kelly</td>
                                                                    <td>Senior Javascript Developer</td>
                                                                    <td>Edinburgh</td>
                                                                    <td>22</td>
                                                                    <td>2012/03/29</td>
                                                                  
                                                                </tr>
                                                                <tr>
                                                                    <td>Airi Satou</td>
                                                                    <td>Accountant</td>
                                                                    <td>Tokyo</td>
                                                                    <td>33</td>
                                                                    <td>2008/11/28</td>
                                                                  
                                                                </tr>       
                                                            </tbody>
                                                            <tfoot>
                                                            
                                                            </tfoot>
                                                        </table>
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
  <script type="text/javascript">

  function action()
  {
	  $.ajax({
			type:'POST',
			
			url:'AffectationSujet',
			success: function(resultat){
			}
		});
	  
  }
  
  </script>

   <jsp:include page="footer.jsp"></jsp:include>