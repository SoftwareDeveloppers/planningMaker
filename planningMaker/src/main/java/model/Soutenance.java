package model;

import java.sql.Date;
import java.sql.Time;

public class Soutenance {
	
	private int id;
	private Date date;
	private Time heure;
	private int id_salle;
	private int id_Etudiant;
	
	public Soutenance(int id, Date date, Time heure, int id_salle, int idEtudiant) {
		super();
		this.id = id;
		this.date = date;
		this.id_salle = id_salle;
		this.heure = heure;
		this.id_Etudiant= idEtudiant;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getHeure() {
		return heure;
	}

	public void setHeure(Time heure) {
		this.heure = heure;
	}

	public int getId_salle() {
		return id_salle;
	}

	public void setId_salle(int id_salle) {
		this.id_salle = id_salle;
	}

	public int getId_Etudiant() {
		return id_Etudiant;
	}

	public void setId_Etudiant(int id_Etudiant) {
		this.id_Etudiant = id_Etudiant;
	}
	
}
