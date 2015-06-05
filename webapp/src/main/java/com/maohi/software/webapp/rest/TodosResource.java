/**
 * 
 */
package com.maohi.software.webapp.rest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.UriInfo;

import com.maohi.software.webapp.dao.DAOTodo;
import com.maohi.software.webapp.jaxb2.Todo;

/**
 * @author heifara
 *
 */
@Path("/todos")
public class TodosResource {

	// Allows to insert contextual objects into the class,
	// e.g. ServletContext, Request, Response, UriInfo
	@Context
	UriInfo uriInfo;
	@Context
	Request request;

	// retuns the number of todos
	// Use http://localhost:8080/de.vogella.jersey.todo/rest/todos/count
	// to get the total number of records
	@GET
	@Path("count")
	@Produces(MediaType.TEXT_PLAIN)
	public String getCount() {
		int count = DAOTodo.getInstance().count();
		return String.valueOf(count);
	}

	// retuns the number of todos
	// Use http://localhost:8080/de.vogella.jersey.todo/rest/todos/count
	// to get the total number of records
	@GET
	@Path("count")
	@Produces(MediaType.TEXT_HTML)
	public String getCountHTML() {
		int count = DAOTodo.getInstance().count();
		return "<strong>" + String.valueOf(count) + "</strong>";
	}

	@POST
	@Path("count")
	@Produces(MediaType.TEXT_PLAIN)
	public String getCountPost() {
		int count = DAOTodo.getInstance().count();
		return String.valueOf(count);
	}

	@GET
	@Path("{id}")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Todo getTodo(@PathParam("id") String aId) {
		return DAOTodo.getInstance().get(aId);
	}

	@POST
	@Path("{id}")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Todo getTodoPost(@FormParam("id") String aId) {
		return DAOTodo.getInstance().get(aId);
	}

	// Return the list of todos for applications
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public List<Todo> getTodos() {
		List<Todo> todos = new ArrayList<Todo>();
		todos.addAll(DAOTodo.getInstance().selectAll());
		return todos;
	}

	// Return the list of todos to the user in the browser
	@GET
	@Produces(MediaType.TEXT_XML)
	public List<Todo> getTodosBrowser() {
		List<Todo> todos = new ArrayList<Todo>();
		todos.addAll(DAOTodo.getInstance().selectAll());
		return todos;
	}

	@GET
	@Path("{id}/{summary}/{description}")
	@Produces(MediaType.TEXT_HTML)
	public void newTodo(@Context HttpServletResponse aServletResponse, @PathParam("id") String aId, @PathParam("summary") String aSummary, @PathParam("description") String aDescription) throws IOException {
		Todo iTodo = new Todo();
		iTodo.setSummary(aSummary);
		iTodo.setDescription(aDescription);
		DAOTodo.getInstance().insert(aId, iTodo);

		aServletResponse.sendRedirect("/webapp/todo_form.jsp");
	}

	@POST
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Todo newTodo(@FormParam("id") String id, @FormParam("summary") String summary, @FormParam("description") String description, @Context HttpServletResponse servletResponse) throws IOException {
		Todo iTodo = new Todo();
		iTodo.setSummary(summary);
		if (description != null) {
			iTodo.setDescription(description);
		}
		DAOTodo.getInstance().insert(id, iTodo);

		return iTodo;
	}

}
