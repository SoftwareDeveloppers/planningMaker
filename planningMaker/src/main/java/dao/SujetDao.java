package dao;

import java.util.List;

import model.Sujet;

public interface SujetDao {
	
	public boolean create(Sujet s);
	public boolean delete(Sujet s);
	public boolean update(Sujet s);
	public Sujet findById(int id);
	public List<Sujet> findBySpecialite(Sujet s);
	public List<Sujet> findAll();	
	
}
