package tr.edu.gsu.peralab.mobilesensing.web.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import tr.edu.gsu.peralab.mobilesensing.web.constant.SQLQuery;
import tr.edu.gsu.peralab.mobilesensing.web.dao.JDBCBaseDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.UserDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.UserRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

@Repository
public class UserDAOImpl extends JDBCBaseDAO implements UserDAO {

	@Override
	public User retrieveUser(String userName) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());
		return user;
	}

	@Override
	public int retriveUserCount() {
		int userCount = getJdbcTemplate().queryForInt(
				SQLQuery.GET_USER_COUNT.getValue());
		return userCount;
	}

	@Override
	public int retriveOnlineUserCount() {
		int userCount = getJdbcTemplate().queryForInt(
				SQLQuery.GET_ONLINE_USER_COUNT.getValue());
		return userCount;
	}

	@Override
	public List<User> retrieveAllUsers() {
		return getJdbcTemplate().query(SQLQuery.GET_ALL_USERS.getValue(),
				new UserRowMapper());
	}

}
