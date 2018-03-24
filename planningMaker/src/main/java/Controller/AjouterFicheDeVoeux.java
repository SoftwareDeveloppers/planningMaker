package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EtudiantDaoImpl;
import dao.FicheDeVoeuxDaoImpl;
import model.FicheDeVoeux;

/**
 * Servlet implementation class AjouterFicheDeVoeux
 */
public class AjouterFicheDeVoeux extends HttpServlet {
	private static final long serialVersionUID = 1L;
	boolean remplie = false;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("idEtudiant") == null) {

			response.sendRedirect("Login");
			
		} else {
			int idEtudiant = (Integer) session.getAttribute("idEtudiant");

			FicheDeVoeuxDaoImpl ficheDao = new FicheDeVoeuxDaoImpl();

			if (ficheDao.nbrSujeuts(idEtudiant) != 5) {

				EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
				List<String> Specilaite = etudiant.findSpecialite();
				request.setAttribute("specialite", Specilaite);

				remplie = false;
				request.setAttribute("remplie", remplie);
				this.getServletContext().getRequestDispatcher("/fiche-de-voeux.jsp").forward(request, response);

			} else {
				FicheDeVoeuxDaoImpl fichedao = new FicheDeVoeuxDaoImpl();

				remplie = true;
				request.setAttribute("remplie", remplie);
				request.setAttribute("sujetsChoisi", fichedao.listSujets(idEtudiant));
				this.getServletContext().getRequestDispatcher("/fiche-de-voeux.jsp").forward(request, response);

			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int idEtudiant = (Integer) session.getAttribute("idEtudiant");

		int idSujet1 = Integer.parseInt(request.getParameter("sujet1"));
		int idSujet2 = Integer.parseInt(request.getParameter("sujet2"));
		int idSujet3 = Integer.parseInt(request.getParameter("sujet3"));
		int idSujet4 = Integer.parseInt(request.getParameter("sujet4"));
		int idSujet5 = Integer.parseInt(request.getParameter("sujet5"));

		FicheDeVoeux fiche1 = new FicheDeVoeux(idEtudiant, idSujet1);
		FicheDeVoeux fiche2 = new FicheDeVoeux(idEtudiant, idSujet2);
		FicheDeVoeux fiche3 = new FicheDeVoeux(idEtudiant, idSujet3);
		FicheDeVoeux fiche4 = new FicheDeVoeux(idEtudiant, idSujet4);
		FicheDeVoeux fiche5 = new FicheDeVoeux(idEtudiant, idSujet5);

		FicheDeVoeuxDaoImpl ficheDao1 = new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl ficheDao2 = new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl ficheDao3 = new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl ficheDao4 = new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl ficheDao5 = new FicheDeVoeuxDaoImpl();

		ficheDao1.create(fiche1);
		ficheDao2.create(fiche2);
		ficheDao3.create(fiche3);
		ficheDao4.create(fiche4);
		ficheDao5.create(fiche5);

		this.doGet(request, response);

	}

}
