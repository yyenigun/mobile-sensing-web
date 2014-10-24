package tr.edu.gsu.peralab.mobilesensing.web.dao;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;

public interface DeviceDAO {
	
	public Device retrieveDeviceDetail(String userName);

}
