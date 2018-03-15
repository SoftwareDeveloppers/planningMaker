package model;

import java.sql.Date;

public class FicheDeVoeux {
	
	private int id ;
	private String specialite;
	private int idEtudiant ;
	
	public FicheDeVoeux(int id, String specialite, int idEtudiant) {
		super();
		this.id = id;
		this.specialite = specialite;
		this.idEtudiant = idEtudiant;
	}

	public int getIdEtudiant() {
		return idEtudiant;
	}

	public void setIdEtudiant(int idEtudiant) {
		this.idEtudiant = idEtudiant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}

}
