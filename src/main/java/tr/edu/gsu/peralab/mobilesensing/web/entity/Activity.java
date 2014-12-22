package tr.edu.gsu.peralab.mobilesensing.web.entity;

import java.io.Serializable;

public enum Activity implements Serializable {

	Bicycle("Bisikletli"), Walking("Yürüyor"), Stationary("Hareketsiz"), Neither("Hiçbiri"), Chilling("Titriyor");
	
	String label;

	private Activity(String label) {
		this.label = label;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

}
