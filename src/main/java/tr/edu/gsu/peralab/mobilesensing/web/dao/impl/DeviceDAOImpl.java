package tr.edu.gsu.peralab.mobilesensing.web.dao.impl;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import tr.edu.gsu.peralab.mobilesensing.web.constant.SQLQuery;
import tr.edu.gsu.peralab.mobilesensing.web.dao.DeviceDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.JDBCBaseDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.DeviceRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.LocationRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.UserRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;
import tr.edu.gsu.peralab.mobilesensing.web.util.DateUtil;

@Repository
public class DeviceDAOImpl extends JDBCBaseDAO implements DeviceDAO {

	@Override
	public Device retrieveDeviceDetail(String userName) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());

		String phoneActQuery = "SELECT extra FROM PhoneActData" + "_"
				+ userName + "_" + user.getUserId();

		String phoneActQueryWithTime = "SELECT extra, time FROM PhoneActData"
				+ "_" + userName + "_" + user.getUserId();

		String batteryLevel = null;
		String runningApplications = null;
		Device device = new Device();
		try {
			Device deviceWithBatteryLevel = getJdbcTemplate()
					.queryForObject(
							phoneActQueryWithTime
									+ " WHERE Feature = 'Battery' AND Field = 'Battery Level' ORDER BY time DESC LIMIT 1",
							new DeviceRowMapper());
			runningApplications = getJdbcTemplate()
					.queryForObject(
							phoneActQuery
									+ " WHERE Feature = 'Application' AND Field = 'Running Applications' ORDER BY time DESC LIMIT 1",
							String.class);
			batteryLevel = deviceWithBatteryLevel.getBatteryLevel().substring(
					0, deviceWithBatteryLevel.getBatteryLevel().length() - 1);
			device.setBatteryLevel(batteryLevel);
			device.setRunningApplicationNumber(runningApplications);
			device.setName(userName);
			device.setLastDataDate(deviceWithBatteryLevel.getLastDataDate());
		} catch (EmptyResultDataAccessException e) {
			logger.warn(e);
		}
		return device;
	}

	@Override
	public Location retriveDeviceLocation(String userName) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());
		Location location = null;
		try {
			String locationQuery = "SELECT provider,latitude, longitude FROM LocationInfoData"
					+ "_" + userName + "_" + user.getUserId();
			location = (Location) getJdbcTemplate().queryForObject(
					locationQuery + " ORDER BY time DESC LIMIT 1",
					new LocationRowMapper());
		} catch (EmptyResultDataAccessException e) {
			logger.warn(e);
		}
		return location;
	}

	@Override
	public List<String> retrieveUserActivity(String userName, long startTime,
			long endTime) {
		List<String> activities = new ArrayList<String>();
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());

		String startTimeStr = DateUtil.convertTimestampToDbDate(startTime);
		String endTimeStr = DateUtil.convertTimestampToDbDate(endTime);
		

		String activityQuery = "SELECT actfeatures.act FROM ActFeaturesData"
				+ "_"
				+ userName
				+ "_"
				+ user.getUserId()
				+ " actfeatures  WHERE  STR_TO_DATE(actfeatures.time, '%d.%m.%Y %H:%i:%s') >= '"
				+ startTimeStr
				+ "' AND STR_TO_DATE(actfeatures.time, '%d.%m.%Y %H:%i:%s') <= '"
				+ endTimeStr + "'";

		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
				activityQuery);
		for (Map<String, Object> row : rows) {
			activities.add(((String) row.get("act"))
					.toUpperCase());
		}
		return activities;
	}

	@Override
	public List<Device> retrieveDeviceDetails(String userName, long startTime,
			long endTime) {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());

		String phoneActQueryWithTime = "SELECT extra, time FROM PhoneActData"
				+ "_" + userName + "_" + user.getUserId();

		String startTimeStr = DateUtil.convertTimestampToDbDate(startTime);
		String endTimeStr = DateUtil.convertTimestampToDbDate(endTime);
		try {
			List<Device> devices = new ArrayList<Device>();		
			List<Map<String, Object>> rows = getJdbcTemplate()
					.queryForList(
							phoneActQueryWithTime
									+ " WHERE Feature = 'Battery' AND Field = 'Battery Level' AND STR_TO_DATE(time, '%Y/%m/%d %H:%i.%s.%f') >= '"
									+ startTimeStr
									+ "' AND STR_TO_DATE(time, '%Y/%m/%d %H:%i.%s.%f') <= '"
									+ endTimeStr + "';");
			 
			for (Map<String, Object> row : rows) {
				Device device = new Device();
				try {
					device.setLastDataDate(DateUtil.convertDeviceDateToTimestamp((String)row.get("time")));
				} catch (ParseException e) {
					e.printStackTrace();
				}
				device.setBatteryLevel(((String)row.get("extra")).split("%")[0]);
				devices.add(device);
			}
			return devices;
		} catch (EmptyResultDataAccessException e) {
			logger.warn(e);
		}
		return null;
	}
}
