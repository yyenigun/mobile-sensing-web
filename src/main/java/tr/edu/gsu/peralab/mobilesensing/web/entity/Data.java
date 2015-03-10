package tr.edu.gsu.peralab.mobilesensing.web.entity;

import java.util.List;

public class Data {

	private List<String> columnNames;

	private List<String> data;

	public List<String> getColumnNames() {
		return columnNames;
	}

	public void setColumnNames(List<String> columnNames) {
		this.columnNames = columnNames;
	}

	public List<String> getData() {
		return data;
	}

	public void setData(List<String> data) {
		this.data = data;
	}

}
