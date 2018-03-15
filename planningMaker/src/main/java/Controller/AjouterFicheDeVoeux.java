package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDaoImpl;
import dao.FicheDeVoeuxDao;
import model.Etudiant;
import model.FicheDeVoeux;

/**
 * Servlet implementation class AjouterFicheDeVoeux
 */
public class AjouterFicheDeVoeux extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		List<String> Specilaite = etudiant.findSpecialite();
		request.setAttribute("specialite", Specilaite);
		
	this.getServletContext().getRequestDispatcher("/fiche-de-voeux.jsp").forward(request, response);

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FicheDeVoeux> fiches = new ArrayList<FicheDeVoeux>();
	}

}
