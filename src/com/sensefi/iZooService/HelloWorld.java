package com.sensefi.iZooService;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/TEST")
public class HelloWorld {
	@GET
	@Path("/HELLO")
	@Produces(MediaType.APPLICATION_JSON)
	public Response onboardUser() {
		return Response.status(200).entity("Hello World").build();
	}
}
