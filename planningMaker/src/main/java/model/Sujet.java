package model;

import java.sql.Date;

public class Sujet {
	private int id;
	private String titre;
	private String contenu;
	private String specialite;
	private Date dateCreation;
	
	public Sujet(int id, String titre, String contenu, String specialite, Date dateCreation) {
		super();
		this.id = id;
		this.titre = titre;
		this.contenu = contenu;
		this.specialite = specialite;
		this.dateCreation = dateCreation;
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
