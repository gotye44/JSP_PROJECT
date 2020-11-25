package com.dm.dispatcher;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

import com.dm.action.Action;
import com.dm.action.ApplicationContext;

public class HandlerMapper {

	private Map<String, Action> commandMap = new HashMap<>();
	
	public HandlerMapper() throws Exception {
		String path = "com/dm/properties/url";
		
		ResourceBundle rb = ResourceBundle.getBundle(path);
		
		Set<String> actionSetHome = rb.keySet();
		
		Iterator<String> it = actionSetHome.iterator();
		
		while(it.hasNext()) {
			String command = it.next();
			
			String actionClassName = rb.getString(command);
			
			System.out.println("[HandlerMapper]command >>>>> " + command);
			
			System.out.println("[HandlerMapper]actionClassName >>>>> " + actionClassName);
			
			Class<?> actionClass;
			try {
				actionClass = Class.forName(actionClassName);
				Action commandAction = (Action) actionClass.newInstance();
				
				System.out.println("[HandlerMapper]commandAction >>>>> "+commandAction);
				
				Method[] methods = actionClass.getMethods();
				
				for(Method method : methods) {
					if(method.getName().contains("set")) {
						String paramType = method.getParameterTypes()[0].getName();
						
						System.out.println("[HandlerMapper]paramType전 >>>>> " + paramType);
						
						paramType = paramType.substring(paramType.lastIndexOf(".")+1);
						
						System.out.println("[HandlerMapper]paramType중 >>>>> " + paramType);
						
						paramType = (paramType.charAt(0)+"").toLowerCase()+paramType.substring(1);
						
						System.out.println("[HandlerMapper]paramType후 >>>>> " + paramType);
						
						try {
							method.invoke(commandAction, ApplicationContext.getApplicationContext().get(paramType));
						} catch (Exception e) {
							e.printStackTrace();
							throw e;
						} 
					}
				}
				
				commandMap.put(command, commandAction);
			} catch (ClassNotFoundException e) {
				System.out.println("[HandlerMapper]"+actionClassName+"이 존재하지 않습니다.");
				throw e;
			} catch (InstantiationException e) {
				System.out.println("[HandlerMapper]"+actionClassName+"인스턴스를 생성할 수 없습니다.");
				throw e;
			} catch (IllegalAccessException e) {
				e.printStackTrace();
				throw e;
			}
		}
	}
	
	public Action getAction(String url) {
		Action action = commandMap.get(url);
		return action;
	}
}
