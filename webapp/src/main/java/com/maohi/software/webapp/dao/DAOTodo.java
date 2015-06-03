/**
 * 
 */
package com.maohi.software.webapp.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import com.maohi.software.webapp.jaxb2.Todo;

/**
 * @author heifara
 *
 */
public class DAOTodo {	

	public static DAOTodo getInstance() {
		if (singleton == null) {
			singleton = new DAOTodo();
		}
		return singleton;
	}

	private static DAOTodo singleton;

	private Map<String, Todo> todos;

	private DAOTodo() {
		todos = new HashMap<String, Todo>();
	}

	public int count() {
		return todos.keySet().size();
	}

	public boolean exists(String id) {
		return todos.containsKey(id);
	}

	public Collection<Todo> selectAll() {
		return todos.values();
	}

	public void insert(String id, Todo aTodo) {
		todos.put(id, aTodo);
	}
}
