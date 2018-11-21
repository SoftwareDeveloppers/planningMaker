package model;

public class Configuration {

	private int id;
	private int nbrJuree;
	private int nbrChoixSujet;
	private int nbrSujetProposer;
	private float taux;

	

	public Configuration() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNbrJuree() {
		return nbrJuree;
	}

	public void setNbrJuree(int nbrJuree) {
		this.nbrJuree = nbrJuree;
	}

	public int getNbrChoixSujet() {
		return nbrChoixSujet;
	}

	public void setNbrChoixSujet(int nbrChoixSujet) {
		this.nbrChoixSujet = nbrChoixSujet;
	}

	public int getNbrSujetProposer() {
		return nbrSujetProposer;
	}

	public void setNbrSujetProposer(int nbrSujetProposer) {
		this.nbrSujetProposer = nbrSujetProposer;
	}

	public float getTaux() {
		return taux;
	}

	public void setTaux(float taux) {
		this.taux = taux;
	}

}
