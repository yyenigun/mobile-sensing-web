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

@Service("userService")
public class UserService {

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	DeviceDAO deviceDAO;

	public User findUser(String userName, String password) {
		return userDAO.retrieveUser(userName);
	}
	
	public int retrieveUserCount() {
		return userDAO.retriveUserCount();
	}
	
	public int retrieveOnlineUserCount() {
		return userDAO.retriveOnlineUserCount();
	}
	
	public List<User> retrieveAllUsers(){
		return userDAO.retrieveAllUsers();	
	}
	
	public Device retrieveDeviceDetail(String userName){
		return deviceDAO.retrieveDeviceDetail(userName);
	}

}
