package model;

import java.sql.Date;

public class Enseignant {
	
	@Override
	public String toString() {
		return "Enseignant [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", dateN=" + dateN + ", adresse="
				+ adresse + ", email=" + email + ", mdp=" + mdp + ", specialite=" + specialite + ", grade=" + grade
				+ ", telephone=" + telephone + ", sexe=" + sexe + "]";
	}
	private int id ;
	private String nom;
	private String prenom;
	private Date dateN;
	private String adresse;
	private String email;
	private String mdp;
	private String specialite;
	private String grade;
	private String telephone;
	private String sexe;

	
	
	
	
	


	public Enseignant(int id, String nom, String prenom, Date dateN, String adresse, String email, String mdp,
			String specialite, String grade, String telephone, String sexe) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.dateN = dateN;
		this.adresse = adresse;
		this.email = email;
		this.mdp = mdp;
		this.specialite = specialite;
		this.grade = grade;
		this.telephone = telephone;
		this.sexe = sexe;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
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
