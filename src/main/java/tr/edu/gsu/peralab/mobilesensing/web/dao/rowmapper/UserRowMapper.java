package tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
 		User user = new User();
 		user.setUserId(rs.getLong("userid"));
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
 		user.setIsForceRestart(rs.getInt("isforcerestart"));
		return user;
	}

}
