package model;

public class Assiste {
	private int id_soutenance;
	private int id_enseignant;
	
	public Assiste(int id_soutenance, int id_enseignant) {
		super();
		this.id_soutenance = id_soutenance;
		this.id_enseignant = id_enseignant;
	}

	public int getId_soutenance() {
		return id_soutenance;
	}

	public void setId_soutenance(int id_soutenance) {
		this.id_soutenance = id_soutenance;
	}

	public int getId_enseignant() {
		return id_enseignant;
	}

	public void setId_enseignant(int id_enseignant) {
		this.id_enseignant = id_enseignant;
	}
}
