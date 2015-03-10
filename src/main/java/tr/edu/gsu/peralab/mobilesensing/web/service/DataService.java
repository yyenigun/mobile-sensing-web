package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.io.IOException;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tr.edu.gsu.peralab.mobilesensing.web.dao.DataExportDAO;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Data;

@Service("dataService")
public class DataService {
	
	@Autowired
	DataExportDAO dataExportDAO;
	
	public String exportToCSV(String userName, String tableName) throws SQLException, IOException{
		return dataExportDAO.exportToCSV(userName, tableName);
	}

}