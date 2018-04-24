package Controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AffectationDaoImpl;
import dao.EtudiantDaoImpl;
import dao.FicheDeVoeuxDaoImpl;
import dao.SujetDaoImpl;
import model.Affectation;
import model.Etudiant;
import model.FicheDeVoeux;
import model.Sujet;

public class AffectationSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AffectationSujet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("iciiii");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("je suis la!!");
		
		//importe tt les sujets
		ArrayList <Sujet> sujets = new ArrayList<Sujet>();
		SujetDaoImpl sujet = new SujetDaoImpl();
		sujets = (ArrayList<Sujet>) sujet.findAll();
		
		ArrayList <Etudiant> etudiants = new ArrayList<Etudiant>();
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		etudiants = (ArrayList<Etudiant>) etudiant.findBySpecialite("GL");
		
		//sort array list using Collections class
		Collections.sort(etudiants, new Comparator<Etudiant>() {
			public int compare(Etudiant e1, Etudiant e2) {
				return e2.getMoy().compareTo(e1.getMoy());	
			}
		});
			//afficher tri etudiant
			/*for (int i = 0; i < etudiants.size(); i++) {
				System.out.println(etudiants.get(i).getMoy());	
			}
			System.out.println(etudiants.size());
			System.out.println("fin boucle! apres tri");*/
		FicheDeVoeuxDaoImpl ficheDeVoeux = new FicheDeVoeuxDaoImpl();
		FicheDeVoeux ff = new FicheDeVoeux();
		int ordre;
		boolean trouve;
		
		for (int i=0; i< etudiants.size();i++) {
			ordre = 1;
			trouve =false;
			do{
			 ff = ficheDeVoeux.findByIdAndOrdre(etudiants.get(i).getId_FicheDeVoeux(), ordre);
				 for (int j=0; j < sujets.size();j++) {
					 if (sujets.get(j).getId() == ff.getIdSujet()) {
						 AffectationDaoImpl aff = new AffectationDaoImpl();
						 Affectation e =new Affectation(0, etudiants.get(i).getId(), sujets.get(j).getId());
						 trouve=true;
						 aff.create(e);
						 sujets.remove(j);
						 break;
					}	
				}
				 if(!trouve)
					 ordre++;
			}while(ordre <=5 && !trouve);
			if (!trouve) {
				System.out.println("pas de chance tout les sujets sont pris");
			}
		}
		
		
		
		

	}

}
