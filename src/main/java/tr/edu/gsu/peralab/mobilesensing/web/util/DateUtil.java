package tr.edu.gsu.peralab.mobilesensing.web.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	private DateUtil() {

	}

	public static long convertDbDateToTimestamp(String dbDate)
			throws ParseException {
		Date date = new SimpleDateFormat("yyyy-MM-dd H:mm:ss").parse(dbDate);
		return date.getTime();
	}
	
	public static String convertTimestampToDbDate(long timestamp){
		return new SimpleDateFormat("yyyy-MM-dd H:mm:ss").format(timestamp);
	}

}
