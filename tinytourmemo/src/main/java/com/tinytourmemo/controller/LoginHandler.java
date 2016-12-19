/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tinytourmemo.controller;

import java.sql.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Polotin
 */
public class LoginHandler extends HttpServlet {
    public LoginHandler() {
        super();
        // TODO Auto-generated constructor stub
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                request.setCharacterEncoding("UTF-8");
		String tmpEmail=request.getParameter("email");
		String tmpPwd=request.getParameter("password");
		String sql="select pwd from user.mapping where EMAIL= '"+tmpEmail+"'; ";
		Connection connection=null;
		Statement statement=null;
		ResultSet resultSet=null;
		boolean flag=false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=UTF-8&useSSL=false","root","982164");
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			if(resultSet.next()){
				if(resultSet.getString("pwd").equals(tmpPwd)){
					flag=true;
				}
			}
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
                            if(resultSet!=null)  
                                resultSet.close(); 
                            if(statement!=null)  
                                statement.close();  
                            if(connection!=null)  
                                connection.close();  
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}  
		if(!flag){
	        RequestDispatcher rd = request.getRequestDispatcher("../LOGIN/login.jsp");
	        request.setAttribute("isValide",flag);
	        request.setAttribute("error", "Invalide email or password");
	        rd.forward(request,response);
		}else{
	        RequestDispatcher rd = request.getRequestDispatcher("../HEADTAIL/index.jsp");
	        rd.forward(request,response);
		}
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
