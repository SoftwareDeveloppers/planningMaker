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
import model.FicheDeVoeux;
import model.Sujet;

/**
 * Servlet implementation class ModifierFiche
 */
public class ModifierFiche extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recuperer id etu 
		HttpSession session = request.getSession();
		if (session.getAttribute("idEtudiant") == null) {

			response.sendRedirect("Login");
			
		} else {
			int idEtudiant = (Integer) session.getAttribute("idEtudiant");
		
		//recuperer fiche de voeux
			FicheDeVoeuxDaoImpl ficheDao = new FicheDeVoeuxDaoImpl();
			List<Sujet> sujets=ficheDao.listSujets(idEtudiant);
		
		//envoi vers modifierfiche.jsp fe requet 
			request.setAttribute("liste",sujets);
			//request.setAttribute("sujet2",sujets.get(1));

			SujetDaoImpl sujetdao = new SujetDaoImpl();
			List<Sujet> listeSujets = sujetdao.findBySpecialite(sujets.get(0));
			request.setAttribute("listeSujets",listeSujets);
			//request.setAttribute("sujet1", sujets.get(0));

			
			//this.doPost(request, response);
		this.getServletContext().getRequestDispatcher("/modifierfiche.jsp").forward(request, response);
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sujet1 = Integer.parseInt(request.getParameter("sujet1"));
		int sujet2 = Integer.parseInt(request.getParameter("sujet2"));
		int sujet3 = Integer.parseInt(request.getParameter("sujet3"));
		int sujet4 = Integer.parseInt(request.getParameter("sujet4"));
		int sujet5 = Integer.parseInt(request.getParameter("sujet5"));
		
		HttpSession session = request.getSession();
		FicheDeVoeuxDaoImpl fiche =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche1 =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche2 =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche3 =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche4 =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche5 =new FicheDeVoeuxDaoImpl();
		FicheDeVoeuxDaoImpl fiche6 =new FicheDeVoeuxDaoImpl();
		int idEtud =(Integer) session.getAttribute("idEtudiant");
		//récupération des anciennes valeurs
		List<Sujet> sujets=new ArrayList<Sujet>();
		sujets = fiche.listSujets(idEtud);
		
		FicheDeVoeux ficheModifiee1 = new FicheDeVoeux(idEtud,sujet1);
		fiche6.update(ficheModifiee1,sujets.get(0).getId());
		FicheDeVoeux ficheModifiee2 = new FicheDeVoeux(idEtud,sujet2);
		fiche1.update(ficheModifiee2,sujets.get(1).getId());
		FicheDeVoeux ficheModifiee3 = new FicheDeVoeux(idEtud,sujet3);
		fiche2.update(ficheModifiee3,sujets.get(2).getId());
		FicheDeVoeux ficheModifiee4 = new FicheDeVoeux(idEtud,sujet4);
		fiche3.update(ficheModifiee4,sujets.get(3).getId());
		FicheDeVoeux ficheModifiee5 = new FicheDeVoeux(idEtud,sujet5);
		fiche4.update(ficheModifiee5,sujets.get(4).getId());

		request.setAttribute("sujetsChoisi", fiche5.listSujets(idEtud));
		
		boolean modifie =true;
		request.setAttribute("modifie", modifie);
		
		//this.getServletContext().getRequestDispatcher("/AjouterFicheDeVoeux").forward(request, response);
		response.sendRedirect("./AjouterFicheDeVoeux");
	}

}
