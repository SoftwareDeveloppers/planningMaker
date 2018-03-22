package dao;

import java.util.List;
import model.FicheDeVoeux;

public interface FicheDeVoeuxDao {
	
	public boolean create(FicheDeVoeux e);
	public boolean delete(FicheDeVoeux e);
	public boolean update(FicheDeVoeux e);
	public FicheDeVoeux findById(int id);
	public List<FicheDeVoeux > findAll();	
	public int nbrSujeuts(int id);
	

}
