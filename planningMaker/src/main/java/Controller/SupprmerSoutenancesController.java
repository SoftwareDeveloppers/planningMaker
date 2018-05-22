package Controller;

import java.io.IOException;

import javax.annotation.Resources;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AffectationDaoImpl;
import dao.SalleDaoImpl;
import dao.SoutenanceDaoImpl;

/**
 * Servlet implementation class SupprmerSoutenancesController
 */
public class SupprmerSoutenancesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AffectationDaoImpl af = new AffectationDaoImpl() ;
		af.delete() ;
		SoutenanceDaoImpl soutimpl = new SoutenanceDaoImpl();
		SalleDaoImpl s  = new SalleDaoImpl();
		  soutimpl.delete();
			  	s.libererLesSalles();
				this.getServletContext().getRequestDispatcher("/affectation_sujet.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SoutenanceDaoImpl soutimpl = new SoutenanceDaoImpl();
		SalleDaoImpl s  = new SalleDaoImpl();
		  soutimpl.delete();
			  	s.libererLesSalles();
				this.getServletContext().getRequestDispatcher("/liste_plannification_soutenance.jsp").forward(request, response);

	
	}
}
