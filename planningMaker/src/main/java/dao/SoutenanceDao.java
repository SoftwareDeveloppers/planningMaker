package dao;

import java.util.ArrayList;
import java.util.List;

import model.Assiste;
import model.Soutenance;
import model.SoutenanceJoin;

public interface SoutenanceDao {
	public boolean create(Soutenance s);
	public boolean delete();
	public boolean update(Soutenance s);
	public List<Soutenance> findAll() ;
	public ArrayList<SoutenanceJoin> jointureSoutnance() ;
	public ArrayList<Assiste> AssitesFindALL() ;

}
