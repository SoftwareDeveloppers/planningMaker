package dao;

import java.util.List;

import model.Remarque;

public interface RemarqueDao {

	public boolean create(Remarque r);
	public List<Remarque>  findByIdEtudiant(int id);
}
