package tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;

public class DeviceRowMapper implements RowMapper<Device>  {

	@Override
	public Device mapRow(ResultSet rs, int rowNum) throws SQLException {
		Device device = new Device();
		device.setLastDataDate(rs.getString("time"));
		device.setBatteryLevel(rs.getString("extra"));
		return device;
	}

}
