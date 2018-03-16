package model;

import java.sql.Date;

public class FicheDeVoeux {
	
	private int id ;
	private int idSujet ;
	
	public FicheDeVoeux(int id, int idSujet) {
		super();
		this.id = id;
		this.idSujet = idSujet;
	}

	public FicheDeVoeux() {
		// TODO Auto-generated constructor stub
	}

	
	public int getIdSujet() {
		return idSujet;
	}

	public void setIdSujet(int idSujet) {
		this.idSujet = idSujet;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	

}
