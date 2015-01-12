package tr.edu.gsu.peralab.mobilesensing.web.entity.json;

import java.io.Serializable;
import java.util.List;

import tr.edu.gsu.peralab.mobilesensing.web.entity.UserActivity;

public class UserActivityList implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<UserActivity> userActivities;

	public List<UserActivity> getUserActivities() {
		return userActivities;
	}

	public void setUserActivities(List<UserActivity> userActivities) {
		this.userActivities = userActivities;
	}

}
