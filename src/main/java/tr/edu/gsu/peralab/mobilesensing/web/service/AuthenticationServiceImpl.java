package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.math.BigInteger;
import java.security.MessageDigest;
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
		MessageDigest digest = null;
		digest = MessageDigest.getInstance("MD5");
		digest.update(password.getBytes(), 0, password.length());
		String md5 = new BigInteger(1, digest.digest()).toString(16);
		return md5.equals(userDetails.getPassword()) ? userDetails : null;
	}

}
