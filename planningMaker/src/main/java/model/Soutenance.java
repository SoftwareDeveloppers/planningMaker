package model;

import java.sql.Date;

public class Soutenance {
	
	private int id;
	private Date date;
	private int id_salle;
	
	public Soutenance(int id, Date date, int id_salle) {
		super();
		this.id = id;
		this.date = date;
		this.id_salle = id_salle;
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

	public int getId_salle() {
		return id_salle;
	}

	public void setId_salle(int id_salle) {
		this.id_salle = id_salle;
	}
}
