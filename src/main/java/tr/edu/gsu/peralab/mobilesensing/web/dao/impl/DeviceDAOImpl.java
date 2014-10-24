package tr.edu.gsu.peralab.mobilesensing.web.dao.impl;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import tr.edu.gsu.peralab.mobilesensing.web.constant.SQLQuery;
import tr.edu.gsu.peralab.mobilesensing.web.dao.DeviceDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.JDBCBaseDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.UserRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

@Repository
public class DeviceDAOImpl extends JDBCBaseDAO implements DeviceDAO {

	@Override
	public Device retrieveDeviceDetail(String userName) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());

		String phoneActQuery = "SELECT extra FROM mobilesensing.phoneactdata"
				+ "_" + userName + "_" + user.getUserId();

		String batteryLevel = null;
		String runningApplications = null;

		try {
			batteryLevel = getJdbcTemplate()
					.queryForObject(
							phoneActQuery
									+ " WHERE Feature = 'Battery' AND Field = 'Battery Level' ORDER BY time DESC LIMIT 1",
							String.class);
			runningApplications = getJdbcTemplate()
					.queryForObject(
							phoneActQuery
									+ " WHERE Feature = 'Application' AND Field = 'Running Applications' ORDER BY time DESC LIMIT 1",
							String.class);
		} catch (EmptyResultDataAccessException e) {

		}
		Device device = new Device();
		device.setBatteryLevel(batteryLevel);
		device.setRunningApplicationNumber(runningApplications);
		device.setName(userName);
		return device;
	}

}
