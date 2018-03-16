package model;

public class Salle {
	
	private Boolean etat;
	private int id;
	private int id_Soutenance;
	
	public Salle(int id, Boolean etat, int id_Soutenance) {
		super();
		this.id_Soutenance = id_Soutenance;
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

	public int getId_Soutenance() {
		return id_Soutenance;
	}

	public void setId_Soutenance(int id_Soutenance) {
		this.id_Soutenance = id_Soutenance;
	}


}
