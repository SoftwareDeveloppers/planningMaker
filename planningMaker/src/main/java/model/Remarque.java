package model;

import java.util.Date;

public class Remarque {
	
	private int id;
	private int id_Etudiant;
	private String titre;
	private String contenu;
	private Date date;
	
	public Remarque(int id, int id_Etudiant, String titre, String contenu,Date date) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.id_Etudiant = id_Etudiant;
		this.date = date;
	}
	
	public Remarque(int id_Etudiant, String titre, String contenu) {
		super();
		this.titre = titre;
		this.contenu = contenu;
		this.id_Etudiant = id_Etudiant;
	}
	
	public Remarque() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_Etudiant() {
		return id_Etudiant;
	}

	public void setId_Etudiant(int id_Etudiant) {
		this.id_Etudiant = id_Etudiant;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
