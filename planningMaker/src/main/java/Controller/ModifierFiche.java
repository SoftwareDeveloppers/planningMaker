package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FicheDeVoeuxDaoImpl;
import dao.SujetDaoImpl;
import model.Configuration;
import model.FicheDeVoeux;
import model.Sujet;

/**
 * Servlet implementation class ModifierFiche
 */
public class ModifierFiche extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// recuperer id etu
		HttpSession session = request.getSession();
		if (session.getAttribute("idEtudiant") == null) {

			response.sendRedirect("Login");

		} else {
			int idEtudiant = (Integer) session.getAttribute("idEtudiant");

			// recuperer fiche de voeux
			FicheDeVoeuxDaoImpl ficheDao = new FicheDeVoeuxDaoImpl();
			List<Sujet> sujets = ficheDao.listSujets(idEtudiant);

			// envoi vers modifierfiche.jsp fe requet
			request.setAttribute("liste", sujets);
			// request.setAttribute("sujet2",sujets.get(1));

			SujetDaoImpl sujetdao = new SujetDaoImpl();
			List<Sujet> listeSujets = sujetdao.findBySpecialite(sujets.get(0));
			request.setAttribute("listeSujets", listeSujets);
			// request.setAttribute("sujet1", sujets.get(0));

			// this.doPost(request, response);
			this.getServletContext().getRequestDispatcher("/modifierfiche.jsp").forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sujet1 = Integer.parseInt(request.getParameter("sujet1"));
		int sujet2 = Integer.parseInt(request.getParameter("sujet2"));
		int sujet3 = Integer.parseInt(request.getParameter("sujet3"));
		int sujet4 = 0;
		int sujet5 = 0;
		if (request.getParameter("sujet4") != null)
			sujet4 = Integer.parseInt(request.getParameter("sujet4"));
		if (request.getParameter("sujet5") != null)
			sujet5 = Integer.parseInt(request.getParameter("sujet4"));

		if ((sujet1 != sujet2) 
				&& (sujet1 != sujet3 || sujet3 == 0) 
				&& (sujet1 != sujet4 || sujet4 == 0)
				&& (sujet1 != sujet5 || sujet5 == 0) 
				&& (sujet2 != sujet3 || sujet3 == 0)
				&& (sujet2 != sujet4 || sujet4 == 0) 
				&& (sujet2 != sujet5 || sujet5 == 0)
				&& (sujet3 != sujet4 || sujet4 == 0) 
				&& (sujet3 != sujet5 || sujet5 == 0)
				&& (sujet4 != sujet5 || sujet4 == 0 || sujet5 == 0)) {

			HttpSession session = request.getSession();
			int idEtud = (Integer) session.getAttribute("idEtudiant");

			FicheDeVoeuxDaoImpl fiche = new FicheDeVoeuxDaoImpl();

			// récupération des anciennes valeurs
			List<Sujet> sujets = new ArrayList<Sujet>();
			sujets = fiche.listSujets(idEtud);

			/*
			 * FicheDeVoeux ficheModifiee1 = new FicheDeVoeux(idEtud,sujet1,1);
			 * fiche.update(ficheModifiee1,sujets.get(0).getId()); FicheDeVoeux
			 * ficheModifiee2 = new FicheDeVoeux(idEtud,sujet2,2);
			 * fiche.update(ficheModifiee2,sujets.get(1).getId()); FicheDeVoeux
			 * ficheModifiee3 = new FicheDeVoeux(idEtud,sujet3,3);
			 * fiche.update(ficheModifiee3,sujets.get(2).getId()); FicheDeVoeux
			 * ficheModifiee4 = new FicheDeVoeux(idEtud,sujet4,4);
			 * fiche.update(ficheModifiee4,sujets.get(3).getId()); FicheDeVoeux
			 * ficheModifiee5 = new FicheDeVoeux(idEtud,sujet5,5);
			 * fiche.update(ficheModifiee5,sujets.get(4).getId());
			 */

			int size = sujets.size();
			for (int i = 1; i <= size; i++) {
				int sujet = Integer.parseInt(request.getParameter("sujet" + i));
				FicheDeVoeux ficheModifiee = new FicheDeVoeux(idEtud, sujet, i);
				fiche.update(ficheModifiee, sujets.get(i - 1).getId());
			}

			// nouvelle valeurs
			sujets = fiche.listSujets(idEtud);

			request.setAttribute("sujetsChoisi", sujets);

			response.sendRedirect("./AjouterFicheDeVoeux");
		} else
			response.sendRedirect("./AjouterFicheDeVoeux");

	}

}
