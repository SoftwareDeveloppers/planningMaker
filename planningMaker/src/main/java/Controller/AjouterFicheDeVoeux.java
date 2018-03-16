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
import dao.FicheDeVoeuxDaoImpl;
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
		int idSujet = Integer.parseInt(request.getParameter("sujet")) ;
		int idEtudiant = Integer.parseInt(request.getParameter("idEtud")) ;

		FicheDeVoeux fiche =  new FicheDeVoeux();
		
		//bilama madernach les session ! 
		fiche.setId(idEtudiant);
		fiche.setIdSujet(idSujet);
		
		FicheDeVoeuxDaoImpl ficheDao = new FicheDeVoeuxDaoImpl();
		ficheDao.create(fiche);
		
		this.doGet(request, response);

	}

}
