package tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;

public class LocationRowMapper implements RowMapper<Location> {

	@Override
	public Location mapRow(ResultSet rs, int rowNum) throws SQLException {
		Location location = new Location();
		location.setLatitude(Double.parseDouble(rs.getString("latitude").substring(2)));
		location.setLongitude(Double.parseDouble(rs.getString("longitude").substring(2)));
		location.setProvider(rs.getString("provider"));
		return location;
	}

}
