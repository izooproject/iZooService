package com.sensefi.iZooService;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.sensefi.iZooService.manager.ServiceManager;

@Path("/SERVICE")
public class ServiceController {
	@GET
	@Path("/CHECK_USER")
	@Produces(MediaType.APPLICATION_JSON)
	public Response checkUser(@QueryParam("userName") String userName, @QueryParam("password") String password) {
		System.out.println("Inside checkUser userName:"+userName); 
		return Response.status(200).entity(new ServiceManager().checkUser(userName, password)).build();
	}
} 
