package tr.edu.gsu.peralab.mobilesensing.web.dao.impl;

import org.springframework.stereotype.Repository;

import tr.edu.gsu.peralab.mobilesensing.web.constant.SQLQuery;
import tr.edu.gsu.peralab.mobilesensing.web.dao.JDBCBaseDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.UserDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.UserRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

@Repository
public class UserDAOImpl extends JDBCBaseDAO implements UserDAO {

	@Override
	public User retrieveUser(String userName, String password) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME_PASSWORD.getValue(),
				new Object[] { userName, password }, new UserRowMapper());
		return user;
	}

}
