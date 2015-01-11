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

package tr.edu.gsu.peralab.mobilesensing.web.entity;


/**
 * @author yalcin.yenigun
 * 
 * This class contains mobile device details. (name, battery level and the number of running applications
 * of a mobile phone.)
 * 
 */
public class Device {
	
	private String name;
	
	private String batteryLevel;
	
	private String runningApplicationNumber;
	
	private String lastDataDate;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBatteryLevel() {
		return batteryLevel;
	}

	public void setBatteryLevel(String batteryLevel) {
		this.batteryLevel = batteryLevel;
	}

	public String getRunningApplicationNumber() {
		return runningApplicationNumber;
	}

	public void setRunningApplicationNumber(String runningApplicationNumber) {
		this.runningApplicationNumber = runningApplicationNumber;
	}

	public String getLastDataDate() {
		return lastDataDate;
	}

	public void setLastDataDate(String lastDataDate) {
		this.lastDataDate = lastDataDate;
	}
	
	
	
	

}
