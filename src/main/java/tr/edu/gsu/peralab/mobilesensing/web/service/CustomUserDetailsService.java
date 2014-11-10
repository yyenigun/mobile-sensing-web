/**This file is part of MobileSensingWeb project of Galatasaray University.

   MobileSensingWeb is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   MobileSensingWeb is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with MobileSensingWeb.  If not, see <http://www.gnu.org/licenses/>.
 */

package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tr.edu.gsu.peralab.mobilesensing.web.dao.UserDAO;

/**
 * @author yalcin.yenigun
 * 
 *         This class contains methods for Authentication & Authorization with
 *         Spring security.
 * 
 */
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDAO userDao;

	/* (non-Javadoc)
	 * @see org.springframework.security.core.userdetails.UserDetailsService#loadUserByUsername(java.lang.String)
	 */
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {

		tr.edu.gsu.peralab.mobilesensing.web.entity.User domainUser = userDao
				.retrieveUser(username);

		User user = null;
		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;

		if (domainUser != null) {
			user = new User(domainUser.getUserName(), domainUser.getPassword()
					.toLowerCase(), enabled, accountNonExpired,
					credentialsNonExpired, accountNonLocked, getAuthorities(domainUser.getRights()));
		}
		return user;
	}

	/**
	 * @param role
	 * @return Credentials of the given role number
	 */
	public List<String> getRoles(Integer role) {
		List<String> roles = new ArrayList<String>();
		if (role.intValue() == 1) {
			roles.add("ROLE_USER");
			roles.add("ROLE_ADMIN");
		} else if (role.intValue() == 0) {
			roles.add("ROLE_USER");
		}
		return roles;
	}

	/**
	 * @param role
	 * @return Authorities of given role
	 * 
	 */
	public Collection<? extends GrantedAuthority> getAuthorities(Integer role) {
		return getGrantedAuthorities(getRoles(role));
	}

	/**
	 * @param roles
	 * @return Granted authorities of given role
	 */
	public static List<GrantedAuthority> getGrantedAuthorities(
			List<String> roles) {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String role : roles) {
			authorities.add(new SimpleGrantedAuthority(role));
		}
		return authorities;
	}

}
