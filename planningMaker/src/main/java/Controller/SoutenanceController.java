package Controller;

import java.io.IOException;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.fabric.xmlrpc.base.Array;

import dao.AffectationDaoImpl;
import dao.AssisteDaoImpl;
import dao.EnseignantDaoImpl;
import dao.EtudiantDaoImpl;
import dao.SalleDaoImpl;
import dao.SoutenanceDaoImpl;
import model.Affectation;
import model.Assiste;
import model.Enseignant;
import model.Etudiant;
import model.Salle;
import model.Soutenance;
import model.SoutenanceJoin;
import model.affectationJoin;

public class SoutenanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SoutenanceController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		boolean remplie;

		if (session.getAttribute("idAgent") == null && session.getAttribute("idEtudiant")== null && session.getAttribute("idEnseignant")== null  ) {

			response.sendRedirect("Deconnexion");

		} else {
			
			SoutenanceDaoImpl soutimpl = new SoutenanceDaoImpl();
			ArrayList<SoutenanceJoin> soutenanceJoins = new ArrayList<SoutenanceJoin>();
			soutenanceJoins = soutimpl.jointureSoutnance();
			
			if( soutenanceJoins.isEmpty() ) {
				remplie = false;
				request.setAttribute("remplie", remplie);
				this.getServletContext().getRequestDispatcher("/liste_plannification_soutenance.jsp").forward(request, response);

			}
			else {
				remplie = true ;
			String[] dateD = soutenanceJoins.get(0).getDate().toString().split("-");
			String[] datef = soutenanceJoins.get(soutenanceJoins.size() - 1).getDate().toString().split("-");
			
			System.out.println(dateD[1]);
			int moisDebut = Integer.parseInt(dateD[1]);
			int moisfin = Integer.parseInt(datef[1]);
			
			int jourDebut = Integer.parseInt(dateD[2]);
			int jourfin = Integer.parseInt(datef[2]);

			int nbrJour = 0;

			if (moisDebut ==  moisfin) {
				System.out.println(jourfin + " deb"+jourDebut);

				nbrJour = jourfin - jourDebut;

			} else if (moisDebut < moisfin) {

			
					nbrJour = jourDebut + (30 - jourfin);
				

			}
			request.setAttribute("nbrjour", nbrJour);
			//request.setAttribute("ens", enseignants);
			//request.setAttribute("assiste", assistes);
			request.setAttribute("soutnances", soutenanceJoins);
			request.setAttribute("remplie", remplie);
			this.getServletContext().getRequestDispatcher("/liste_plannification_soutenance.jsp").forward(request, response);
		}

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// r�cup�rer date d�but des soutenances saisie par l'agent.
		String DateSoutenance = request.getParameter("DateSoutenance");

		// Etape1: programmer des soutenances date d�but, l'heure et la salle.
		pgrSoutenances(DateSoutenance);
		// Etape2: choisir 5 jur�s pour chaque soutenance de mani�re intelligente.
		choisirJures();
		this.doGet(request, response);

	}

	void pgrSoutenances(String DateSoutenance) {
		// r�cuprer tt les �tudiants qui son autoris� a passee une soutenance(i.e :
		// taux=100 %).
		ArrayList<Etudiant> etudiants = new ArrayList<Etudiant>();
		EtudiantDaoImpl etudiant = new EtudiantDaoImpl();
		etudiants = (ArrayList<Etudiant>) etudiant.findByTaux(100);
		// tantque reste un �tudiant dans la liste
		while (etudiants.size() != 0) {
			// choisir un �tudiant al�atoirement
			int numero = (int) (Math.random() * etudiants.size());
			// r�cup�rer l'�tudiant
			Etudiant e = etudiants.get(numero);
			// enlever l'etudaint de la liste
			etudiants.remove(numero);
			// r�cup�rer une salle libre [ 0:occuper, 1:libre, 2:occuper le matin]
			SalleDaoImpl salle = new SalleDaoImpl();
			// commenc� par r�cup�rer la salle etat = 2 [libre apres midi]
			Salle salleSoutenance = salle.findByEtat(2);
			// test� si on a une salle libre apres midi
			if (salleSoutenance != null) {
				// cr�er une soutenance avec heure apres midi
				createSoutenance(DateSoutenance, "14:00:00", salleSoutenance.getId(), e.getId());
				// modifier l'etat de la salle par [0:occuper]
				salle.updateEtat(0, salleSoutenance.getId());
				// sinon
			} else {
				// r�cup�rer la salle etat = 1 [libre]
				salleSoutenance = salle.findByEtat(1);
				// test� si on a une salle libre
				if (salleSoutenance != null) {
					// cr�er une soutenance le matin
					createSoutenance(DateSoutenance, "10:00:00", salleSoutenance.getId(), e.getId());
					// modifier l'etat de la salle par [2:occuper le matin]
					salle.updateEtat(2, salleSoutenance.getId());
					// sinon
				} else {
					// tt les salles son occuper etat 0
					// ->changer l'etat des salles par 1 [libre]
					salle.libererLesSalles();
					// ->incr�menter la date d�but soutenance par un jour
					DateSoutenance = LocalDate.parse(DateSoutenance).plusDays(1).toString();
					// cr�er une soutenance dans la salle 1 le matin
					createSoutenance(DateSoutenance, "10:00:00", 1, e.getId());
					// modifier l'etat de la salle par [2:occuper le matin]
					salle.updateEtat(2, 1);
				}
			}
		}
	}

	void createSoutenance(String date, String heure, int idSalle, int idEtudiant) {
		SoutenanceDaoImpl soutenance = new SoutenanceDaoImpl();
		Soutenance s = new Soutenance(0, Date.valueOf(date), Time.valueOf(heure), idSalle, idEtudiant);
		soutenance.create(s);
	}

	void choisirJures() {
		// Hashtable pour m�moriser nombre de participation des enseignants dans les
		// soutenances
		// enseignant.
		// cl� = id_enseigant , valeur = nombre de participation dans les soutenances .
		Hashtable<Integer, Integer> Memo = new Hashtable<Integer, Integer>();
		// r�cup�rer tt les enseignants dans une liste
		ArrayList<Enseignant> enseignants = new ArrayList<Enseignant>();
		EnseignantDaoImpl enseignant = new EnseignantDaoImpl();
		enseignants = (ArrayList<Enseignant>) enseignant.findAll();
		// parcourir la liste jusqu'a la fin
		for (int i = 0; i < enseignants.size(); i++) {
			// r�cup�rer nombre de sujet choisir pour chaque enseignant par l'etudiant(0 , 1
			// ou 2 meme 3 ...)
			AffectationDaoImpl aff = new AffectationDaoImpl();
			int nombreOccurrence = aff.nombreOccurrence(enseignants.get(i).getId());
			// replire hastable.
			Memo.put(enseignants.get(i).getId(), nombreOccurrence);
			// fin boucle for-> hashtable remplie!
		}
		// afficher hashtable
		/*
		 * Enumeration e = Memo.elements(); while (e.hasMoreElements())
		 * System.out.println(e.nextElement());
		 */
		// d�claration des variables
		int nombreDeParticipation = 0;
		int nombreDeJurerDispo = 1;
		int nombreDeJurers = 5;
		boolean fin = false;
		int taille = 0;
		// r�cuperer tt les soutenances
		ArrayList<Soutenance> soutenances = new ArrayList<Soutenance>();
		SoutenanceDaoImpl soutenance = new SoutenanceDaoImpl();
		soutenances = (ArrayList<Soutenance>) soutenance.findAll();
		// tantque reste une soutenance dans la liste
		for (int j = 0; j < soutenances.size(); j++) {
			// r�cup�rer id_enseignant
			AffectationDaoImpl aff = new AffectationDaoImpl();
			int idEnseignant = aff.findIdEnseigantByIdEtudiant(soutenances.get(j).getId_Etudiant());
			// inserer dans la table assiste l'encadreure
			createAssiste(soutenances.get(j).getId(), idEnseignant);
			// r�cup�rer la specialite de l'enseignant
			EnseignantDaoImpl en = new EnseignantDaoImpl();
			String speciliteEnseignant = en.findSpecialitebyId(idEnseignant);
			// r�cup�re tt les enseignant qui on la meme specilaite dans une liste .
			// (test� si il sont >= 4 [pr�condition >=4])
			ArrayList<Integer> enseignantsMemeSpecialite = new ArrayList<Integer>();
			enseignantsMemeSpecialite = en.findBySpecialite(speciliteEnseignant);
			// un cas sp�cial: nombre des enseignants < 4
			// pour eviter de prendre l'enseignant 2 fois dans la table assiste pour la meme
			// soutenance on le supprime
			// de la liste qui regroupe tt les enseignants de la meme specialite que le
			// premier (l'encadreur).
			// parcourir la liste
			for (int i = 0; i < enseignantsMemeSpecialite.size(); i++) {
				// cherchez l'encadreur pour le supprimer de la liste
				if (enseignantsMemeSpecialite.get(i) == idEnseignant)
					enseignantsMemeSpecialite.remove(i);
			}
			// variable nombreDeParticipation initialiser a zero : pour commencer a chercher
			// les enseignants
			// qui on aucune participation dans les soutenances
			nombreDeParticipation = 0;
			// var nombreDeJurerDispo initialiser a un : pour compter le nombre de jur�s
			// disponible pour la soutennace
			// vaut 1 au d�but car on deja deja l'encadreur dans la table assiste
			nombreDeJurerDispo = 1;
			// variable nombreDeJurers vaut 5 : 5 jurers max pour une soutenance
			nombreDeJurers = 5;
			// variable boulean pour indiquer si on'a deja pri 4 jur�s
			fin = false;
			// variable taille pour enregistrer la taille de la liste
			taille = enseignantsMemeSpecialite.size();

			// on ne sais pas combien de participation il a un enseignant dans les
			// soutenances
			// pour ne pas limit� les choses j'ai bien met une boucle a l'infinie
			// ca d�pend nombre de soutenance et le nombre des enseignants disponible pour
			// chaque sp�cialit�
			// (pr�condition ne doit pas d�pass� 5 <nombreDeParticipation> reste a faire des
			// tests)
			while (true) {
				// pour ne pas tomb� dans une boucle infinie si on'a pas plus que 4 enseignants
				// dans la liste.
				// cas sp�ciale!
				if (taille < nombreDeJurers) {
					nombreDeJurers = taille;
				}
				// parcourir notre qui contien les enseignant de la meme sp�cialit� que
				// l'encadreur
				for (int i = 0; i < enseignantsMemeSpecialite.size(); i++) {
					// test� si on a deja 4 jur�s
					if (nombreDeJurerDispo == nombreDeJurers) {
						// si oui on sort de la boucle for
						fin = true;
						break;
					}
					// test� si on
					if (Memo.get(enseignantsMemeSpecialite.get(i)) == nombreDeParticipation) {
						// inserer dans la table assiste l'enseignant
						createAssiste(soutenances.get(j).getId(), enseignantsMemeSpecialite.get(i));
						// incr�menter nombreDeJurersDispo
						nombreDeJurerDispo++;
						// modifier nombre de participation dans les soutenances en la rajoute 1
						Memo.put(enseignantsMemeSpecialite.get(i), nombreDeParticipation + 1);
						// pour eviter de prendre l'enseignant 2 fois pour la meme soutenance on le
						// supprime de la liste
						// cas sp�ciale
						enseignantsMemeSpecialite.remove(i);
					}
					// fin boucle for
				}
				// augmenter nombreDeParticipation par un
				nombreDeParticipation++;
				// test� si on'a bien 4 jur�s
				if (fin) {
					// si oui on sort de la boucle while(true)
					break;
				}

				// fin boucle while
			}
			// fin boucle for
		}
		// fin m�thode choisirJures()
	}

	void createAssiste(int id_soutenance, int id_enseignant) {
		Assiste a = new Assiste(id_soutenance, id_enseignant);
		AssisteDaoImpl assiste = new AssisteDaoImpl();
		assiste.create(a);
	}

}
