package com.maohi.software.webapp;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import com.maohi.software.webapp.jaxb2.Todo;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

/**
 * @author heifara
 *
 */
public class TodoResourceTest {

	public static void main(String[] args) {
		ClientConfig config = new DefaultClientConfig();
		Client client = Client.create(config);
		WebResource service = client.resource(getBaseURI());
		// Get XML
		System.out.println(service.path("webresources").path("todo").accept(MediaType.TEXT_XML).get(String.class));
		// Get XML for application
		System.out.println(service.path("webresources").path("todo").accept(MediaType.APPLICATION_JSON).get(String.class));
		// Get JSON for application
		System.out.println(service.path("webresources").path("todo").accept(MediaType.APPLICATION_XML).get(String.class));

		try {
			JAXBContext jaxbContext = JAXBContext.newInstance(Todo.class);
			Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
			Todo iTodo = (Todo) jaxbUnmarshaller.unmarshal(new URI("http://localhost:8080/webapp/webresources/todo").toURL());
			System.out.println(iTodo);

		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}

	}

	private static URI getBaseURI() {
		return UriBuilder.fromUri("http://localhost:8080/webapp").build();
	}
}
