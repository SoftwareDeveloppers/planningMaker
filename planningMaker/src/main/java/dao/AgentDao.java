package dao;

import java.util.List;

import model.AgentAdmin;

public interface AgentDao {

	public boolean create(AgentAdmin e);
	public boolean delete(AgentAdmin e);
	public boolean update(AgentAdmin e);
	public AgentAdmin findById(int id);
	public List<AgentAdmin> findAll();
	public int check(String user, String mdp);
	public boolean checkEmail(String email);
	
}
