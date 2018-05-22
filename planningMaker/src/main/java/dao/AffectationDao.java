package dao;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import model.Affectation;
import model.affectationJoin;

public interface AffectationDao {

	public boolean create(Affectation e);
	public ArrayList<affectationJoin> jointureAffectaction();
	public boolean delete();
	public int findByEtudiant(int id);
	public int findIdEnseigantByIdEtudiant(int id_Etudiant);
	public int nombreOccurrence (int idEnseignant);
	public Affectation findBySujet(int id);
	public List<Affectation> findAll() ;

}
