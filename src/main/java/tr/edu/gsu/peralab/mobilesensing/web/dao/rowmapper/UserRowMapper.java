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

package tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

/**
 * @author yalcin.yenigun
 * This class contains row mappings for User entity.
 */
public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getString("useruuid"));
		user.setUserName(rs.getString("username"));
		user.setLastName(rs.getString("userlastname"));
		user.setAge(rs.getInt("age"));
		user.setWeight(rs.getInt("weight"));
		user.setHeight(rs.getInt("height"));
		user.setGender(rs.getString("sex"));
		user.setRights(rs.getInt("rights"));
		user.setConInterval(rs.getInt("coninterval"));
		user.setPopupInterval(rs.getInt("popupinterval"));
		user.setIsOnline(rs.getInt("isonline"));
		user.setIsForceRestart(rs.getInt("isforcestart"));
		user.setPassword(rs.getString("password"));
		return user;
	}

}
