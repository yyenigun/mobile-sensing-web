package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.security.NoSuchAlgorithmException;

import org.springframework.security.core.userdetails.UserDetails;

public interface AuthenticationService {
	
	public UserDetails login(String userName, String password) throws NoSuchAlgorithmException;

}
