package dao;

import java.util.List;

import model.Etudiant;


public interface EtudiantDao {
	
	public boolean create(Etudiant e);
	public boolean delete(int id);
	public boolean update(Etudiant e);
	public Etudiant findById(int id);
	public List<String> findSpecialite();
	public List<Etudiant > findAll();	
	public Etudiant check(String user, String mdp);
	public boolean checkEmail(String email);
	public boolean addFicheDeVoeux(int id, int idF);
	
}
