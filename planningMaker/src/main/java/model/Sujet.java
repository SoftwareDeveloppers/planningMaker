package model;

import java.sql.Date;

public class Sujet {
	
	private int id;
	private String titre;
	private String contenu;
	private String specialite;
	private Date dateCreation;
	private int id_enseignant ;
	

	public Sujet(int id, String titre, String contenu, String specialite, Date dateCreation, int id_enseignant) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.specialite = specialite;
		this.dateCreation = dateCreation;
		this.id_enseignant = id_enseignant;
	}
	
	public Sujet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId_enseignant() {
		return id_enseignant;
	}
	public void setId_enseignant(int id_enseignant) {
		this.id_enseignant = id_enseignant;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public Date getDateCreation() {
		return dateCreation;
	}
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
}
