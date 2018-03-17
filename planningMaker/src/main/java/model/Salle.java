package model;

public class Salle {
	
	private Boolean etat;
	private int id;
	
	public Salle(int id, Boolean etat) {
		super();
		this.id = id;
		this.etat = etat;
	}
	
	public Boolean getEtat() {
		return etat;
	}

	public void setEtat(Boolean etat) {
		this.etat = etat;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
