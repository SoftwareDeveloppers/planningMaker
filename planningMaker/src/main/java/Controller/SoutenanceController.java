package Controller;

import java.io.IOException;

import java.sql.Date;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EtudiantDaoImpl;
import dao.SalleDaoImpl;
import dao.SoutenanceDaoImpl;
import model.Etudiant;
import model.Salle;
import model.Soutenance;

public class SoutenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SoutenanceController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/liste_plannification_soutenance.jsp").forward(request,
				response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int jour=1;
		// récupérer date début des soutenances saisie par l'agent.
		Date DateSoutenance = Date.valueOf(request.getParameter("DateSoutenance"));
		String ddate = request.getParameter("DateSoutenance");

		// récuprer tt les étudiants qui son autorisé a passee une soutenance(i.e : taux=100 %).
		ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		etudiants = (ArrayList<Etudiant>) etudiant.findByTaux(100);
		while (etudiants.size()!=0) {

			// choisir un étudiant aléatoirement
			int numero = (int) (Math.random() * etudiants.size());
			// récupérer l'étudiant
			Etudiant e = etudiants.get(numero);
			// enlever l'etudaint de la liste
			etudiants.remove(numero);
			// récupérer les salles libre [ 0:occuper, 1:libre, 2:occuper le matin]
			SalleDaoImpl salle = new SalleDaoImpl();
			//commencé par récupérer la salle etat = 2 [libre apres midi]
			Salle salleSoutenance = salle.findByEtat(2);
			if (salleSoutenance != null) {
				System.out.println("also never here");
				// créer une soutenance avec heure apres midi
				SoutenanceDaoImpl soutenance = new SoutenanceDaoImpl();
				Soutenance s = new Soutenance(0, DateSoutenance, Time.valueOf("14:00:00"), salleSoutenance.getId(), e.getId());
				soutenance.create(s);
				//modifier l'etat de la salle par [0:occuper]
				salle.updateEtat(0,salleSoutenance.getId());
			}
			else {
				System.out.println("ici");
				//récupérer la salle etat = 1 [libre]
				 salleSoutenance = salle.findByEtat(1);
				if (salleSoutenance != null) {
					System.out.println("never here");
					// créer une soutenance le matin 
					SoutenanceDaoImpl soutenance = new SoutenanceDaoImpl();
					Soutenance s = new Soutenance(0, DateSoutenance, Time.valueOf("10:00:00"), salleSoutenance.getId(), e.getId());
					soutenance.create(s);	
					//modifier l'etat de la salle par [2:occuper le matin]
					System.out.println("id de la salle "+ salleSoutenance.getId());
					System.out.println("return "+ salle.updateEtat(2,salleSoutenance.getId()));
				}
				else {
					System.out.println("icii");
					//tt les salles son occuper etat 0
					//->changer l'etat des salle par 1 [libre] 
					salle.libererLesSalles();
					//->incrémenter la date début soutenance par un jour
					String d  =LocalDate.parse(ddate).plusDays(jour).toString();
					jour++;
					DateSoutenance = Date.valueOf(d);
					// créer une soutenance dans la salle 1 le matin 
					SoutenanceDaoImpl soutenance = new SoutenanceDaoImpl();
					Soutenance s = new Soutenance(0, DateSoutenance, Time.valueOf("10:00:00"), 1, e.getId());
					soutenance.create(s);	
					//modifier l'etat de la salle par [2:occuper le matin]
					salle.updateEtat(2,1);	
				}		
			}	
		}
	}

}
