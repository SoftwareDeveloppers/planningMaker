package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EtudiantDaoImpl;

public class Modification extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		if (session.getAttribute("idEtudiant") == null) {

			response.sendRedirect("Login");
			
		} else {
			int idEtudiant = (Integer) session.getAttribute("idEtudiant");

			
			
			
		}
		
		
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		EtudiantDaoImpl UpdateFiche = new EtudiantDaoImpl();
		HttpSession session = request.getSession();
		int idEtudiant = (Integer) session.getAttribute("idEtudiant");
		
		
		
		
		
		
	}

}
