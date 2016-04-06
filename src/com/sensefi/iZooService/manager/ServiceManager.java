package com.sensefi.iZooService.manager;

public class ServiceManager {
   public String checkUser(String userName, String password) {
	   
	   String dbUserId = "boo";
	   String dbPassword = "boo";
	   String userStatus = "FAILURE";
	   if(userName != null && userName.equals(dbUserId) && password != null && password.equals(dbPassword)) {
		   userStatus = "SUCCESS";
	   }
	   System.out.println("userStatus:"+userStatus);
	   return userStatus;
   }
}
