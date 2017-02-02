/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS_PC
 */
public class CommonAdminServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String action=request.getParameter("action");
        if(action!=null && action.equalsIgnoreCase("Add"))
        {
             String name=request.getParameter("name");
              String img1=request.getParameter("img1");
               String img2=request.getParameter("img2");
                String img3=request.getParameter("img3");
                 String price=request.getParameter("price");
                  String origin=request.getParameter("origin");
                   String madein=request.getParameter("madein");
                    String color=request.getParameter("color");
                    try{
                                
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="insert into beer values('"+name+"','"+img1+"','"+img2+"','"+img3+"','"+price+"','"+origin+"','"+madein+"','"+color+"')";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                int rs=stmt.executeUpdate();
                                if(rs>0)
                                {
                                response.sendRedirect("addBeer.html");
                                }
            }
            catch(Exception e)
            {
            System.out.println(e);
            }
        }
    }


}
