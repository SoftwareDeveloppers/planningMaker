package model;

import java.sql.Date;

public class Etudiant {
	
	private int id ;
	private String nom;
	private String prenom;
	private String email;
	private String mdp;
	private Date dateNaissance;
	private String specialite;
	private String promotion;
	private Float moy;
	private Float taux;
	

	public Etudiant(int id, String nom, String prenom, String email, String mdp, Date dateNaissance,
			String specialite, String promotion, Float moy, Float taux) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.mdp = mdp;
		this.dateNaissance = dateNaissance;
		this.specialite = specialite;
		this.promotion = promotion;
		this.moy = moy;
		this.taux = taux;
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
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getPromotion() {
		return promotion;
	}
	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}
	public Float getMoy() {
		return moy;
	}
	public void setMoy(Float moy) {
		this.moy = moy;
	}
	public Float getTaux() {
		return taux;
	}
	public void setTaux(Float taux) {
		this.taux = taux;
	}

}
