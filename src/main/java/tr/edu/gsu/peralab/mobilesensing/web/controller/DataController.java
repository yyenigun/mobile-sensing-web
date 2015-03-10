package tr.edu.gsu.peralab.mobilesensing.web.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tr.edu.gsu.peralab.mobilesensing.web.service.DataService;

@Controller
public class DataController {

	@Autowired
	DataService dataService;
	
	@RequestMapping("/secured/data/{username}")
	public String data(Model model, Principal principal, @PathVariable String username) {
		String principalName = principal.getName();
		model.addAttribute("username", principalName);
		return "secured/data";
	}

	@RequestMapping(value = "/secured/dataexport/{username}/{tablename}", method = RequestMethod.GET,  produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public void exportData(Model model, @PathVariable String username,
			@PathVariable String tablename, Principal principal, HttpServletResponse response)
			throws ParseException {
		try {
			String fileName = dataService.exportToCSV(username, tablename);
			response.setContentType("text/csv");
	        response.setHeader("Content-Disposition","attachment; filename=\"" + fileName +"\"");
	        response.setCharacterEncoding("UTF-8");
		    InputStream is = new FileInputStream("/tmp/" + fileName);
		    IOUtils.copy(is, response.getOutputStream());
	        response.flushBuffer();
	    } catch (SQLException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
