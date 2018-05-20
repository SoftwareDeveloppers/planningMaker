package dao;

import model.Soutenance;

public interface SoutenanceDao {
	public boolean create(Soutenance s);
	public boolean delete(Soutenance s);
	public boolean update(Soutenance s);

}
