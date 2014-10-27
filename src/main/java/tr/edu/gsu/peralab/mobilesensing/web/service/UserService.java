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

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tr.edu.gsu.peralab.mobilesensing.web.dao.DeviceDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.UserDAO;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

/**
 * @author yalcin.yenigun
 * 
 *         This class contains methods for user operations.
 * 
 */
@Service("userService")
public class UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private DeviceDAO deviceDAO;

	/**
	 * @param userName
	 * @param password
	 * @return Related user information
	 */
	public User findUser(String userName, String password) {
		return userDAO.retrieveUser(userName);
	}

	/**
	 * @return Number of users in the database
	 */
	public int retrieveUserCount() {
		return userDAO.retriveUserCount();
	}

	/**
	 * @return Number of online users on web application
	 */
	public int retrieveOnlineUserCount() {
		return userDAO.retriveOnlineUserCount();
	}

	/**
	 * @return All users in the database
	 */
	public List<User> retrieveAllUsers() {
		return userDAO.retrieveAllUsers();
	}

	/**
	 * @param userName
	 * @return Related user's mobile device information
	 */
	public Device retrieveDeviceDetail(String userName) {
		return deviceDAO.retrieveDeviceDetail(userName);
	}

}
