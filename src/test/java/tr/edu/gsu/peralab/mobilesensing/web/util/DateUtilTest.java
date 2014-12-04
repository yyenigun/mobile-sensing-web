package tr.edu.gsu.peralab.mobilesensing.web.util;

import static org.junit.Assert.assertEquals;

import java.sql.Timestamp;
import java.text.ParseException;

import org.junit.Test;

public class DateUtilTest {
	
	@Test
	public void testParseDateSuccess() throws ParseException{
		Timestamp timeStamp = DateUtil.convertDbDateToTimestamp("08.08.2014_12:54:16");
		assertEquals(1407491656000L, timeStamp.getTime());
	}
	
	@Test(expected=ParseException.class)
	public void testParseDateFail() throws ParseException{
		Timestamp timeStamp = DateUtil.convertDbDateToTimestamp("08-08-2014_12:54:16");
		assertEquals(1407491656000L, timeStamp.getTime());
	}
	
	@Test
	public void testTimestampToStringSuccess() throws ParseException{
		String formattedDate = DateUtil.convertTimestampToDbDate(new Timestamp(1407491656000L));
		assertEquals("08.08.2014_12:54:16", formattedDate);
	}

}
