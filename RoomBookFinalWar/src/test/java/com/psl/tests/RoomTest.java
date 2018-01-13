package com.psl.tests;

import org.junit.Test;
import com.psl.dao.RoomDao;
import static org.mockito.Mockito.*;
import junit.framework.TestCase;

public class RoomTest extends TestCase {
 
	@Test
	public void testGetRoomByLocation() {
        RoomDao roomDao = mock(RoomDao.class);
        assertNotNull(roomDao.getRoomByLocation("HJ"));        
	}
}