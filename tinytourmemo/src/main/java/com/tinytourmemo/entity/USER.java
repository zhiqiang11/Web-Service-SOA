/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tinytourmemo.entity;

/**
 *
 * @author Polotin
 */
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.sql.Statement;
//import com.mysql.jdbc.Statement;

public class USER {
	private String email="";
	private String password="";
	private String password1="";
	Map<String,String>userMap=null;
	Map<String,String>errorsMap=null;
	
	public USER(){
		super();
		this.email="";
		this.password="";
		userMap=new HashMap<String,String>();
		errorsMap=new HashMap<String,String>();
		userMap.put("zhangsan","123zs");
		userMap.put("lisi","123zs");
		
	}
	public boolean isValidate(){
		boolean flag=true;
		java.sql.Connection connection=null;
		Statement statement=null;
		//ResultSet resultSet=null;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/testWeb","root","admin");
			statement=(Statement) connection.createStatement();
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return flag;
	}
	public String getErrors(String key){
		String errorV=this.errorsMap.get(key);
		return errorV==null?"":errorV;
	}
	public String getEmail(){
		return email;
	}
	public void setEmail(String em){
		this.email=em;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String pwd){
		this.password=pwd;
	}
	public String getPassword1(){
		return password1;
	}
	public void setPassword1(String pwd){
		this.password1=pwd;
	}
}

