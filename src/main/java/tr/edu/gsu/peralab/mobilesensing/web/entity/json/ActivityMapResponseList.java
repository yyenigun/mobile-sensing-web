package tr.edu.gsu.peralab.mobilesensing.web.entity.json;

import java.io.Serializable;
import java.util.List;

public class ActivityMapResponseList implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<ActivityMapResponse> activityMaps;

	public List<ActivityMapResponse> getActivityMaps() {
		return activityMaps;
	}

	public void setActivityMaps(List<ActivityMapResponse> activityMaps) {
		this.activityMaps = activityMaps;
	}

}
