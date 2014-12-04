package tr.edu.gsu.peralab.mobilesensing.web.util;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private DateUtil() {

	}

	public static Timestamp convertDbDateToTimestamp(String dbDate)
			throws ParseException {
		Date date = new SimpleDateFormat("dd.MM.yyyy_H:mm:ss").parse(dbDate);
		Timestamp timestamp = new Timestamp(date.getTime());
		return timestamp;
	}
	
	public static String convertTimestampToDbDate(Timestamp timestamp){
		return new SimpleDateFormat("dd.MM.yyyy_H:mm:ss").format(timestamp);
	}

}
