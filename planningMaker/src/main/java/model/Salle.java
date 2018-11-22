package model;

public class Salle {
	
	private int etat;
	private String numSalle;
	private int id;
	
	public Salle() {	
	}
	
	public Salle(int id, String numSalle, int etat) {
		super();
		this.id = id;
		this.numSalle = numSalle;
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

	public String getNumSalle() {
		return numSalle;
	}

	public void setNumSalle(String numSalle) {
		this.numSalle = numSalle;
	}
	
	
}
