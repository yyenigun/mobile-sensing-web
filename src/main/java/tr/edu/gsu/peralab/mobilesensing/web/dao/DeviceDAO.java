/**This file is part of MobileSensingWeb project of Galatasaray University.

   MobileSensingWeb is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   MobileSensingWeb is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with MobileSensingWeb.  If not, see <http://www.gnu.org/licenses/>.
 */

package tr.edu.gsu.peralab.mobilesensing.web.dao;

import java.sql.Timestamp;
import java.util.List;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Activity;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;

/**
 * @author yalcin.yenigun
 * 
 *         This class is a Data Access Object for Device entity.
 * 
 */
public interface DeviceDAO {

	/**
	 * @param userName
	 * @return Device information of the given user
	 */
	Device retrieveDeviceDetail(String userName);
	
	
	/**
	 * @param userName
	 * @return Location information including device latitude and longitude
	 */
	Location retriveDeviceLocation(String userName);
	
	/**
	 * @param userName
	 * @param startTime
	 * @param endTime
	 * @return User's activity list (Bicycle, Stationary, Walking..etc.) between start time and end time
	 */
	List<Activity> retrieveUserActivity(String userName, Timestamp startTime, Timestamp endTime);

}
