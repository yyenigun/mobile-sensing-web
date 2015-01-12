package tr.edu.gsu.peralab.mobilesensing.web.entity;

import java.io.Serializable;

public class UserActivity implements Serializable, Comparable<UserActivity> {

	private static final long serialVersionUID = 1L;

	private String userName;

	private Integer activityNumber;

	public UserActivity() {
		super();
	}

	public UserActivity(String userName, int activityNumber) {
		super();
		this.userName = userName;
		this.activityNumber = activityNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getActivityNumber() {
		return activityNumber;
	}

	public void setActivityNumber(Integer activityNumber) {
		this.activityNumber = activityNumber;
	}

	@Override
	public int compareTo(UserActivity o) {
		return o.activityNumber.compareTo(this.activityNumber);
	}
}
