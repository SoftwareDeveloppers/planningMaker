package model;

import java.sql.Date;

public class Etudiant {
	
	private int id ;
	private String nom;
	private String prenom;
	private String email;
	private String mdp;
	private Date dateNaissance;
	private String specialite;
	private String promotion;
	private Float moy;
	private Float taux;
	private int id_FicheDeVoeux;
	private int id_Enseignant;
	

	public int getId_FicheDeVoeux() {
		return id_FicheDeVoeux;
	}

	public void setId_FicheDeVoeux(int id_FicheDeVoeux) {
		this.id_FicheDeVoeux = id_FicheDeVoeux;
	}

	public int getId_Enseignant() {
		return id_Enseignant;
	}

	public void setId_Enseignant(int id_Enseignant) {
		this.id_Enseignant = id_Enseignant;
	}

	public Etudiant(int id, String nom, String prenom, String email, String mdp, Date dateNaissance,
			String specialite, String promotion, Float moy, Float taux, int id_FicheDeVoeux, int id_Enseignant ) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.mdp = mdp;
		this.dateNaissance = dateNaissance;
		this.specialite = specialite;
		this.promotion = promotion;
		this.moy = moy;
		this.taux = taux;
		this.id_FicheDeVoeux = id_FicheDeVoeux;
		this.id_Enseignant = id_Enseignant;
	}
	
	
	public Etudiant() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public Date getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getSpecialite() {
		return specialite;
	}
	public void setSpecialite(String specialite) {
		this.specialite = specialite;
	}
	public String getPromotion() {
		return promotion;
	}
	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}
	public Float getMoy() {
		return moy;
	}
	public void setMoy(Float moy) {
		this.moy = moy;
	}
	public Float getTaux() {
		return taux;
	}
	public void setTaux(Float taux) {
		this.taux = taux;
	}

	@Override
	public String toString() {
		return "Etudiant [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", mdp=" + mdp
				+ ", dateNaissance=" + dateNaissance + ", specialite=" + specialite + ", promotion=" + promotion
				+ ", moy=" + moy + ", taux=" + taux + ", id_FicheDeVoeux=" + id_FicheDeVoeux + ", id_Enseignant="
				+ id_Enseignant + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dateNaissance == null) ? 0 : dateNaissance.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + id;
		result = prime * result + id_Enseignant;
		result = prime * result + id_FicheDeVoeux;
		result = prime * result + ((mdp == null) ? 0 : mdp.hashCode());
		result = prime * result + ((moy == null) ? 0 : moy.hashCode());
		result = prime * result + ((nom == null) ? 0 : nom.hashCode());
		result = prime * result + ((prenom == null) ? 0 : prenom.hashCode());
		result = prime * result + ((promotion == null) ? 0 : promotion.hashCode());
		result = prime * result + ((specialite == null) ? 0 : specialite.hashCode());
		result = prime * result + ((taux == null) ? 0 : taux.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Etudiant other = (Etudiant) obj;
		if (dateNaissance == null) {
			if (other.dateNaissance != null)
				return false;
		} else if (!dateNaissance.equals(other.dateNaissance))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (id != other.id)
			return false;
		if (id_Enseignant != other.id_Enseignant)
			return false;
		if (id_FicheDeVoeux != other.id_FicheDeVoeux)
			return false;
		if (mdp == null) {
			if (other.mdp != null)
				return false;
		} else if (!mdp.equals(other.mdp))
			return false;
		if (moy == null) {
			if (other.moy != null)
				return false;
		} else if (!moy.equals(other.moy))
			return false;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		if (prenom == null) {
			if (other.prenom != null)
				return false;
		} else if (!prenom.equals(other.prenom))
			return false;
		if (promotion == null) {
			if (other.promotion != null)
				return false;
		} else if (!promotion.equals(other.promotion))
			return false;
		if (specialite == null) {
			if (other.specialite != null)
				return false;
		} else if (!specialite.equals(other.specialite))
			return false;
		if (taux == null) {
			if (other.taux != null)
				return false;
		} else if (!taux.equals(other.taux))
			return false;
		return true;
	}


	

}
