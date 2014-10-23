package tr.edu.gsu.peralab.mobilesensing.web.constant;

public enum SQLQuery {

	GET_USER_BY_USERNAME(
			"SELECT t.userid, t.username, t.userlastname, t.password, t.age, t.weight, t.height, t.sex, t.rights, t.coninterval,"
					+ "t.popupinterval, t.isonline, t.isforcestart FROM mobilesensing.user t WHERE t.username=?"),

	GET_USER_COUNT("SELECT COUNT(*) FROM mobilesensing.user"),
	
	GET_ONLINE_USER_COUNT("SELECT COUNT(*) FROM mobilesensing.user WHERE isOnline=1"),
	
	GET_ALL_USERS("SELECT * FROM mobilesensing.user");

	private String value;

	SQLQuery(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

}
