package tr.edu.gsu.peralab.mobilesensing.web.dao;

import java.io.IOException;
import java.sql.SQLException;

/**
 * @author yalcin
 * This interface is for exporting database data to a CSV file
 *
 */
public interface DataExportDAO {
	
	public String exportToCSV(String userName, String tableName) throws SQLException, IOException;

}
