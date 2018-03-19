package dao;

import java.util.List;

import model.Enseignant;


public interface EnseignantDao {
	
	public boolean create(Enseignant e);
	public boolean delete(Enseignant e);
	public boolean update(Enseignant e);
	public Enseignant findById(int id);
	public List<Enseignant> findAll();
	public int check(String user, String mdp);

}
