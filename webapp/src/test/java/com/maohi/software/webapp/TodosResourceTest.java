/**
 * 
 */
package com.maohi.software.webapp;

import java.net.URI;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import com.maohi.software.webapp.jaxb2.Todo;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.representation.Form;

/**
 * @author heifara
 *
 */
public class TodosResourceTest {

	private static final String PATH = "webresources";
	private static final String URL = "http://localhost:8080/webapp";

	public static void main(String[] args) {
		ClientConfig iConfig = new DefaultClientConfig();
		Client iClient = Client.create(iConfig);
		WebResource aService = iClient.resource(getBaseURI());
		// create one todo
		Todo iTodo = new Todo();
		iTodo.setSummary("3");
		iTodo.setDescription("Blabla");
		ClientResponse aResponse = aService.path(PATH).path("todos").path(iTodo.getSummary()).accept(MediaType.APPLICATION_XML).put(ClientResponse.class, iTodo);

		// Return code should be 201 == created resource
		System.out.println(aResponse.getStatus());

		// Get the Todos
		System.out.println(aService.path(PATH).path("todos").accept(MediaType.TEXT_XML).get(String.class));

		// Get JSON for application
		System.out.println(aService.path(PATH).path("todos").accept(MediaType.APPLICATION_JSON).get(String.class));

		// Get XML for application
		System.out.println(aService.path(PATH).path("todos").accept(MediaType.APPLICATION_XML).get(String.class));

		// Get the Todo with id 1
		System.out.println(aService.path(PATH).path("todos/1").accept(MediaType.APPLICATION_XML).get(String.class));

		// Get Todo with id 1
		aService.path(PATH).path("todos/1").delete();

		// Get the all todos, id 1 should be deleted
		System.out.println(aService.path(PATH).path("todos").accept(MediaType.APPLICATION_XML).get(String.class));

		// create a Todo
		Form aForm = new Form();
		aForm.add("id", "4");
		aForm.add("summary", "Demonstration of the client lib for forms");
		aResponse = aService.path(PATH).path("todos").type(MediaType.APPLICATION_FORM_URLENCODED).post(ClientResponse.class, aForm);
		System.out.println("Form response " + aResponse.getEntity(String.class));

		// Get the all todos, id 4 should be created
		System.out.println(aService.path(PATH).path("todos").accept(MediaType.APPLICATION_XML).get(String.class));

	}

	private static URI getBaseURI() {
		return UriBuilder.fromUri(URL).build();
	}
}
