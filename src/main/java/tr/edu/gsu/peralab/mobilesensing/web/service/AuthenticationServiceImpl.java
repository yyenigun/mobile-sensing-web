package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {

	@Autowired
	UserDetailsService userDetailsService;

	public UserDetails login(String userName, String password) throws NoSuchAlgorithmException  {
		UserDetails userDetails = userDetailsService.loadUserByUsername(userName);
		if (userDetails == null) {
			return userDetails;
		}
		return password.equals(userDetails.getPassword()) ? userDetails : null;
	}

}
