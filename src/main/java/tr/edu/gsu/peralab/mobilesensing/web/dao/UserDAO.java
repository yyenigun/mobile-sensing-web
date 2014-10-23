package tr.edu.gsu.peralab.mobilesensing.web.dao;

import java.util.List;

import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

public interface UserDAO {
	
	public User retrieveUser(String userName);
	
	public int retriveUserCount();
	
	public int retriveOnlineUserCount();
	
	public List<User> retrieveAllUsers();
	

}	
