package Controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AffectationDaoImpl;
import dao.EtudiantDaoImpl;
import dao.FicheDeVoeuxDaoImpl;
import dao.SujetDaoImpl;
import model.Affectation;
import model.Etudiant;
import model.FicheDeVoeux;
import model.Sujet;
import model.affectationJoin;

public class AffectationSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	boolean remplie = false;
	String param = null;
	
	public AffectationSujet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(param == null)
		{param = request.getParameter("etudiantEncadrer");}
		if ( param != null) {
			HttpSession session1 = request.getSession();
			int idEns = (Integer) session1.getAttribute("idEnseignant");
			System.out.println("doget etu encadrer");
			SujetDaoImpl sujetDao = new SujetDaoImpl();
			List<Sujet> sujets = new ArrayList<Sujet>();
			sujets = sujetDao.findByIdEnseignant(idEns);

			AffectationDaoImpl affectation = new AffectationDaoImpl();
			List<Affectation> affectations = new ArrayList<Affectation>();
			EtudiantDaoImpl etudDao = new EtudiantDaoImpl();
			List<Etudiant> etud = new ArrayList<Etudiant>();
			
			for(int i=0; i<sujets.size();i++)
			{
				Affectation af = affectation.findBySujet(sujets.get(i).getId());
				affectations.add(af);
				if(af != null)
				{
					Etudiant etu = etudDao.findById(af.getId_Etudiant());
					etud.add(etu);
				}
				
			}
			param = null;
			request.setAttribute("sujets", sujets);
			request.setAttribute("etudiants", etud);
			request.setAttribute("affectations", affectations);
			this.getServletContext().getRequestDispatcher("/EtudiantEncadrer.jsp").forward(request, response);
		
			}
		
		
		if (session.getAttribute("idAgent") == null && session.getAttribute("idEtudiant") == null ) {

			response.sendRedirect("Deconnexion");

		} else {
			ArrayList<Affectation> affectations = new ArrayList<Affectation>();
			AffectationDaoImpl affectation = new AffectationDaoImpl();
			affectations = (ArrayList<Affectation>) affectation.findAll();
			if (affectations.isEmpty()) {
				remplie = false;
				request.setAttribute("remplie", remplie);
				this.getServletContext().getRequestDispatcher("/affectation_sujet.jsp").forward(request, response);
			} else {
				remplie = true;
				request.setAttribute("remplie", remplie);
				request.setAttribute("affectations", affectations);
				ArrayList<affectationJoin> e = affectation.jointureAffectaction();

				request.setAttribute("ListAffectation",e );
				
				this.getServletContext().getRequestDispatcher("/affectation_sujet.jsp").forward(request, response);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if(request.getParameter("updateTaux")!=null)
		{
			int updateTaux = Integer.parseInt(request.getParameter("updateTaux"));
			int idEtud = Integer.parseInt(request.getParameter("tauxEtud"));
			EtudiantDaoImpl etudDao = new EtudiantDaoImpl();
			etudDao.updateTaux(idEtud, updateTaux);
			//String att = "132za&ze";
			param = "132za&ze";
			this.doGet(request, response);
		}

		// importe tt les sujets
		ArrayList<Sujet> sujets = new ArrayList<Sujet>();
		SujetDaoImpl sujet = new SujetDaoImpl();
		sujets = (ArrayList<Sujet>) sujet.findAll();
		String spe[]= {"Gl","RSD","SIC"};

		for (int z = 0; z < 3; z++) {

			ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
			EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
			etudiants = (ArrayList<Etudiant>) etudiant.findBySpecialite(spe[z]);

			// sort array list using Collections class
			Collections.sort(etudiants, new Comparator<Etudiant>() {
				public int compare(Etudiant e1, Etudiant e2) {
					return e2.getMoy().compareTo(e1.getMoy());
				}
			});

			FicheDeVoeuxDaoImpl ficheDeVoeux = new FicheDeVoeuxDaoImpl();
			FicheDeVoeux ff = new FicheDeVoeux();
			int ordre;
			boolean trouve;

			for (int i = 0; i < etudiants.size(); i++) {
				ordre = 1;
				trouve = false;
				do {
					ff = ficheDeVoeux.findByIdAndOrdre(etudiants.get(i).getId_FicheDeVoeux(), ordre);
					if (ff == null) {
						trouve = true;
						break;
					} else {
						for (int j = 0; j < sujets.size(); j++) {

							if (sujets.get(j).getId() == ff.getIdSujet()) {
								AffectationDaoImpl aff = new AffectationDaoImpl();
								Affectation e = new Affectation(sujets.get(i).getId_enseignant(),
										etudiants.get(i).getId(), sujets.get(j).getId());
								trouve = true;
								aff.create(e);
								etudiant.updateIdEnseignant(etudiants.get(i).getId(), sujets.get(i).getId_enseignant());
								sujets.remove(j);
								break;
							}
						}
					}

					if (!trouve)
						ordre++;
				} while (ordre <= 5 && !trouve);
				if (!trouve) {
					System.out.println("pas de chance tout les sujets sont pris");
				}
			}
		}
		this.doGet(request, response);

	}

}
