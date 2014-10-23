package tr.edu.gsu.peralab.mobilesensing.web.dao;

import static org.junit.Assert.assertEquals;

import javax.naming.NamingException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mock.jndi.SimpleNamingContextBuilder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:dispatcher-servlet-test.xml"})
public class UserDAOTest {
	
	@Autowired
	UserDAO userDao;
	
	@Test
	public void testUserCount() throws IllegalStateException, NamingException{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(
				"dispatcher-servlet-test.xml");
		SimpleNamingContextBuilder builder = new SimpleNamingContextBuilder();
	    builder.bind("java:comp/env/jdbc/mobileSensingWebLocal", applicationContext.getBean("dataSource"));
	    builder.activate();
		int userCount = userDao.retriveUserCount();
		assertEquals(false, (userCount == 0));
	}

}
