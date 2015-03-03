package tr.edu.gsu.peralab.mobilesensing.web.entity.json;

import java.io.Serializable;
import java.util.List;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;

public class DeviceList implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<Device> devices;

	public List<Device> getDevices() {
		return devices;
	}

	public void setDevices(List<Device> devices) {
		this.devices = devices;
	}

}
