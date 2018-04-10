package model;

import java.sql.Date;

public class Enseignant {
	
	private int id ;
	private String nom;
	private String prenom;
	private Date dateN;
	private String sexe;
	private String adresse;
	private String specialite;
	private float telephone;
	private String grade;
	private String email;
	private String mdp;
	
	
	
	public Enseignant(int id, String nom, String prenom,Date dateN, String adresse , String specialite, String grade ,float telephone,String sexe,String email, String mdp) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.dateN = dateN;
		this.specialite = specialite;
		this.grade = grade;
		this.adresse = adresse;
		this.telephone = telephone;
		this.sexe = sexe;
		this.email = email;
		this.mdp = mdp;
	}

	public float getTelephone() {
		return telephone;
	}

	public void setTelephone(float telephone) {
		this.telephone = telephone;
	}

	public Date getDateN() {
		return dateN;
	}

	public void setDateN(Date dateN) {
		this.dateN = dateN;
	}

	public String getSexe() {
		return sexe;
	}

	public void setSexe(String sexe) {
		this.sexe = sexe;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

}
