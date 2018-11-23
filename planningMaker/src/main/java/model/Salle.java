package model;

public class Salle {
	
	private int id;
	private int etat;
	private String numSalle;
	
	public Salle() {	
	}
	
	public Salle(int id, int etat, String numSalle) {
		super();
		this.id = id;
		this.etat = etat;
		this.numSalle = numSalle;
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
