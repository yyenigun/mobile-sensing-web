package tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import org.springframework.jdbc.core.RowMapper;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.util.DateUtil;

public class DeviceRowMapper implements RowMapper<Device>  {

	@Override
	public Device mapRow(ResultSet rs, int rowNum) throws SQLException {
		Device device = new Device();
		try {
			device.setLastDataDate(DateUtil.convertDeviceDateToTimestamp(rs.getString("time")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		device.setBatteryLevel(rs.getString("extra"));
		return device;
	}

}
