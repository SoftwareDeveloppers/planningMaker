package dao;


import java.util.List;
import model.FicheDeVoeux;
import model.Sujet;

public interface FicheDeVoeuxDao {
	
	public boolean create(FicheDeVoeux e);
	public boolean delete(FicheDeVoeux e);
	public boolean update(FicheDeVoeux e , int idSujetAncien);
	public FicheDeVoeux findById(int id);
	public FicheDeVoeux findByIdAndOrdre(int id, int ordre);
	public List<FicheDeVoeux > findAll();	
	public int nbrSujeuts(int id);
	public List<Sujet> listSujets(int idficheDevoeux);
	

}
