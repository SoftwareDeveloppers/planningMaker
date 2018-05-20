package model;

public class Salle {
	
	private int etat;
	private int id;
	
	public Salle() {	
	}
	
	public Salle(int id, int etat) {
		super();
		this.id = id;
		this.etat = etat;
	}

	public int getEtat() {
		return etat;
	}

	public void setEtat(int etat) {
		this.etat = etat;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
}
