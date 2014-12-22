package tr.edu.gsu.peralab.mobilesensing.web.entity.json;

import java.io.Serializable;

public class ActivityFilter implements Serializable {

	public ActivityFilter() {

	}

	private static final long serialVersionUID = 1L;

	private String userName;

	private String startTime;

	private String endTime;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

}
