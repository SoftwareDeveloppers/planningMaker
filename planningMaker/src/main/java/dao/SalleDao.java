package dao;

import java.util.List;

import model.Salle;

public interface SalleDao {
	
	public boolean create(Salle e);
	public boolean delete(Salle e);
	public boolean update(Salle e);
	public Salle findById(int id);
	public List<Salle> findAll();	

}
