package dao;

import java.util.ArrayList;

import model.Configuration;

public interface ConfigurationDao {
	
	public boolean update(Configuration s);
	public Configuration find();

}
