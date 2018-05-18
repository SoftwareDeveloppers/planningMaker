package model;

public class affectationJoin {
	private String titreSjet ;
	private String nomEtudiant ;
	private String prenomEtudiant;
	private String specialiteEtudaint ;
	private String nomEnseignant ;
	private String prenomEnseignant;
	
	public affectationJoin(String titreSjet, String nomEtudiant, String prenomEtudiant, String specialiteEtudaint,
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

	@Override
	public String toString() {
		return "affectationJoin [titreSjet=" + titreSjet + ", nomEtudiant=" + nomEtudiant
				+ ", prenomEtudiant=" + prenomEtudiant + ", specialiteEtudaint=" + specialiteEtudaint
				+ ", nomEnseignant=" + nomEnseignant + ", prenomEnseignant=" + prenomEnseignant + "]";
	}

}
