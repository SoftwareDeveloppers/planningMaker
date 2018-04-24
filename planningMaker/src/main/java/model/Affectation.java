package model;

public class Affectation {
	private int id;
	private int id_Etudiant;
	private int id_Sujet;
	
	public Affectation() {
	}
	
	public Affectation(int id, int id_Etudiant, int id_Sujet) {
		super();
		this.id = id;
		this.id_Etudiant = id_Etudiant;
		this.id_Sujet = id_Sujet;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_Etudiant() {
		return id_Etudiant;
	}
	public void setId_Etudiant(int id_Etudiant) {
		this.id_Etudiant = id_Etudiant;
	}
	public int getId_Sujet() {
		return id_Sujet;
	}
	public void setId_Sujet(int id_Sujet) {
		this.id_Sujet = id_Sujet;
	}

}
