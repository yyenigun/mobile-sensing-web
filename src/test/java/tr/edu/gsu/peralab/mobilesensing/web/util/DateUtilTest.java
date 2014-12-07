package tr.edu.gsu.peralab.mobilesensing.web.util;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.text.ParseException;

import org.junit.Test;

public class DateUtilTest {
	
	@Test
	public void testParseDateSuccess() throws ParseException{
		long time = DateUtil.convertDbDateToTimestamp("2014-08-08 12:54:16");
		assertEquals(1407491656000L, time);
	}
	
	@Test(expected=ParseException.class)
	public void testParseDateFail() throws ParseException{
		long time = DateUtil.convertDbDateToTimestamp("2014-08-08-12:54:16");
		assertEquals(1407491656000L, time);
	}
	
	@Test
	public void testTimestampToStringSuccess() throws ParseException{
		String formattedDate = DateUtil.convertTimestampToDbDate(1407491656000L);
		assertEquals("2014-08-08 12:54:16", formattedDate);
	}

}
