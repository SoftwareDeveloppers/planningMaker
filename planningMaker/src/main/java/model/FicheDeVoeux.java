package model;

import java.sql.Date;

public class FicheDeVoeux {
	
	private String specialite;
	
	public FicheDeVoeux(String specialite) {
		super();
		this.specialite = specialite;
	}
	
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}

}
