package dao;

import java.util.ArrayList;

import model.Configuration;

public interface ConfigurationDao {
	
	public boolean update(Configuration s);
	public Configuration find();
	public int findNbrSujetPropose();
	public int findNbrjuree();
	public float findTaux();

}
