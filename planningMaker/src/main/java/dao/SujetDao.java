package dao;

import java.util.List;

import model.Sujet;

public interface SujetDao {
	
	public boolean create(Sujet e);
	public boolean delete(Sujet e);
	public boolean update(Sujet e);
	public Sujet findById(int id);
	public List<Sujet> findAll();	
	
}
