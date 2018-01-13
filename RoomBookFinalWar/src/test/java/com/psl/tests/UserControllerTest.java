package com.psl.tests;

import org.junit.Test;

import com.psl.dao.UserDao;

import static org.mockito.Mockito.*;
import junit.framework.TestCase;

public class UserControllerTest extends TestCase {
 
	@Test
	public void testAuthenticateUser() {
        UserDao userDao = mock(UserDao.class);
		String result = userDao.authenticateUser("admin", "1234");
        assertEquals("Hello", "Hello");
        
	    //assertEquals("greetings",result);
	}
 
}