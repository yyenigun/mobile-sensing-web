package tr.edu.gsu.peralab.mobilesensing.web.entity.json;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

public class ActivityMapResponse implements Serializable, Comparable<ActivityMapResponse> {

	private static final long serialVersionUID = 1L;

	private Map<String, Double> activityMap;

	private String period;

	private Date date;

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public Map<String, Double> getActivityMap() {
		return activityMap;
	}

	public void setActivityMap(Map<String, Double> activityMap) {
		this.activityMap = activityMap;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public int compareTo(ActivityMapResponse o) {
		return this.date.compareTo(o.getDate());
	}
}
