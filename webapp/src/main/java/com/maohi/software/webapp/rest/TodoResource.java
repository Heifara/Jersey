package com.maohi.software.webapp.rest;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.xml.bind.JAXBElement;

import com.maohi.software.webapp.dao.DAOTodo;
import com.maohi.software.webapp.jaxb2.Todo;

/**
 * @author heifara
 *
 */
@Path("/todo")
public class TodoResource {

	@Context
	UriInfo uriInfo;

	@Context
	Request request;

	String id;

	public TodoResource() {
	}
	
	public TodoResource(UriInfo aUriInfo, Request aRequest, String aId) {
		this.uriInfo = aUriInfo;
		this.request = aRequest;
		this.id = aId;
	}

	@DELETE
	public void deleteTodo() {
		System.out.println("Delete " + this.id);
	}

	// This can be used to test the integration with the browser
	@GET
	@Produces({ MediaType.TEXT_XML })
	public Todo getHTML() {
		Todo todo = new Todo();
		todo.setSummary("This is my first todo");
		todo.setDescription("This is my first todo");
		return todo;
	}

	// This method is called if XMLis request
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Todo getXML() {
		Todo todo = new Todo();
		todo.setSummary("This is my first todo");
		todo.setDescription("This is my first todo");
		return todo;
	}

	@PUT
	@Consumes(MediaType.APPLICATION_XML)
	public Response putTodo(JAXBElement<Todo> aTodo) {
		Todo iTodo = aTodo.getValue();
		Response aResponse;
		if (DAOTodo.getInstance().exists(this.id)) {
			aResponse = Response.noContent().build();
		} else {
			aResponse = Response.created(uriInfo.getAbsolutePath()).build();
		}
		DAOTodo.getInstance().insert(this.id, iTodo);
		return aResponse;
	}
}
