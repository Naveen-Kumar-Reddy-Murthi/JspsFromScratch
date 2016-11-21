package org.mnr.service;

public class EmployeeServiceImpl implements EmployeeService {
	
	private String sessionId;
	
	public String showData(){
		return "Here is the data";
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}
}
