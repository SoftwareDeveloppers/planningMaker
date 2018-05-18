package model;

public class Affectation {
	
	private int id;
	private int id_Etudiant;
	private int id_Sujet;
	private String titreSjet ;
	private String nomEtudiant ;
	private String prenomEtudiant;
	private String specialiteEtudaint ;
	private String nomEnseignant ;
	private String prenomEnseignant;
	
	
	public Affectation(String titreSjet, String nomEtudiant, String prenomEtudiant, String specialiteEtudaint,
			String nomEnseignant, String prenomEnseignant) {
		super();
		this.titreSjet = titreSjet;
		this.nomEtudiant = nomEtudiant;
		this.prenomEtudiant = prenomEtudiant;
		this.specialiteEtudaint = specialiteEtudaint;
		this.nomEnseignant = nomEnseignant;
		this.prenomEnseignant = prenomEnseignant;
	}

	public String getTitreSjet() {
		return titreSjet;
	}

	public void setTitreSjet(String titreSjet) {
		this.titreSjet = titreSjet;
	}

	public String getNomEtudiant() {
		return nomEtudiant;
	}

	public void setNomEtudiant(String nomEtudiant) {
		this.nomEtudiant = nomEtudiant;
	}

	public String getPrenomEtudiant() {
		return prenomEtudiant;
	}

	public void setPrenomEtudiant(String prenomEtudiant) {
		this.prenomEtudiant = prenomEtudiant;
	}

	public String getNomEnseignant() {
		return nomEnseignant;
	}

	public void setNomEnseignant(String nomEnseignant) {
		this.nomEnseignant = nomEnseignant;
	}

	public String getSpecialiteEtudaint() {
		return specialiteEtudaint;
	}

	public void setSpecialiteEtudaint(String specialiteEtudaint) {
		this.specialiteEtudaint = specialiteEtudaint;
	}
	

	

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
	@Override
	public String toString() {
		return "Affectation [id=" + id + ", id_Etudiant=" + id_Etudiant + ", id_Sujet=" + id_Sujet + "]";
	}

}
