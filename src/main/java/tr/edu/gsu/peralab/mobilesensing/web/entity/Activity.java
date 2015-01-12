package tr.edu.gsu.peralab.mobilesensing.web.entity;

import java.io.Serializable;

public enum Activity implements Serializable {

	BICYCLE("Bisikletli"), WALKING("Yürüyor"), STATIONARY("Hareketsiz"), NEITHER("Hiçbiri"), CHILLING("Titriyor");
	
	private String label;
	
	public static Activity toActivity(String label){
		for(Activity activity : Activity.values()){
			if(label.equals(activity.getLabel())){
				return activity;
			}
		}
		return null;
	}

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
