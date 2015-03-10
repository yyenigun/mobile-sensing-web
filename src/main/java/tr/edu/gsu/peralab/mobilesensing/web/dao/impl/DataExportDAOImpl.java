package tr.edu.gsu.peralab.mobilesensing.web.dao.impl;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import tr.edu.gsu.peralab.mobilesensing.web.constant.SQLQuery;
import tr.edu.gsu.peralab.mobilesensing.web.dao.DataExportDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.JDBCBaseDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.rowmapper.UserRowMapper;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Data;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;

@Repository
public class DataExportDAOImpl extends JDBCBaseDAO implements DataExportDAO {

	@Override
	public String exportToCSV(String userName, String tableName)
			throws SQLException, IOException {
		User user = (User) getJdbcTemplate().queryForObject(
				SQLQuery.GET_USER_BY_USERNAME.getValue(),
				new Object[] { userName }, new UserRowMapper());

		String userTable = tableName + "_" + userName + "_" + user.getUserId();
		String query = "SELECT * FROM " + userTable;
		PreparedStatement statement = getConnection().prepareStatement(query);
		ResultSet resultSet = statement.executeQuery();
		ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
		FileWriter writer = new FileWriter("/tmp/" + userTable + ".csv");
        for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
        	writer.append(resultSetMetaData.getColumnName(i));
        	writer.append(",");
        }
    	writer.append("\n");
		while(resultSet.next()){
			for(int i = 1; i <= resultSetMetaData.getColumnCount(); i++){
				writer.append(resultSet.getString(i).replaceAll(",", "."));
				writer.append(",");
			}
	    	writer.append("\n");
		} 
	    writer.flush();
	    writer.close();
		return userTable + ".csv";
	}
}
