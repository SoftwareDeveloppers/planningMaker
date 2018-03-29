package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDaoImpl;
import model.Etudiant;

public class AffectationSujet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AffectationSujet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("iciiii");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("je suis la!!");
		ArrayList <Etudiant> etudiants = new ArrayList<Etudiant>();
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		etudiants = (ArrayList<Etudiant>) etudiant.findBySpecialite("GL");
		
		//sort array list using Collections class
		Collections.sort(etudiants, new Comparator<Etudiant>() {
			public int compare(Etudiant e1, Etudiant e2) {
				return e2.getMoy().compareTo(e1.getMoy());	
			}
		});
			for (int i = 0; i < etudiants.size(); i++) {
				System.out.println(etudiants.get(i).getMoy());	
			}
			System.out.println(etudiants.size());
			System.out.println("fin boucle! apres tri");
		
		

	}

}
