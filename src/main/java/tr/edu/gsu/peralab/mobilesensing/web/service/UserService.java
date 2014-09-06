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

import org.springframework.stereotype.Service;

import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

@Service("userService")
public class UserService {

	public User findUser() {
		User user = new User();
		user.setUserId(1L);
		user.setLogin("login1");
		user.setFirstName("John");
		user.setLastName("Doe");
		return user;
	}
}
