package model;

import java.sql.Date;

public class FicheDeVoeux {
	
	private int id ;
	private int idSujet ;
	private int ordre ; 
	
	

	public FicheDeVoeux(int id, int idSujet, int ordre) {
		super();
		this.id = id;
		this.idSujet = idSujet;
		this.ordre = ordre;
	}


	public FicheDeVoeux() {
		// TODO Auto-generated constructor stub
	}

	
	public int getOrdre() {
		return ordre;
	}


	public void setOrdre(int ordre) {
		this.ordre = ordre;
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
