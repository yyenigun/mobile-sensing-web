package tr.edu.gsu.peralab.mobilesensing.web.constant;

public enum SQLQuery {

	GET_USER_BY_USERNAME(
			"SELECT t.userid, t.username, t.userlastname, t.password, t.age, t.weight, t.height, t.sex, t.rights, t.coninterval"
			+ "t.popupinterval, t.isonline, t.isforcestart FROM mobilesensing.user t WHERE t.username=?");

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
