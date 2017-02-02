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
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS_PC
 */
public class CommonCustomerServlet extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String action=request.getParameter("action");
         HttpSession session=request.getSession();
        if(action!=null && action.equalsIgnoreCase("search"))
        {
            String product=request.getParameter("product");
            String type=request.getParameter("type");
            try{
                                
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="select * from beer where name='"+product+"' and type='"+type+"'";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                System.out.println(sql);
                                ResultSet rs=stmt.executeQuery();
                                String sql2="select * from beer where type='"+type+"'";
				PreparedStatement stmt2=conn.prepareStatement(sql2);
                                System.out.println(sql2);
                                ResultSet rs2=stmt2.executeQuery();
                               
            session.setAttribute("result", rs);
            session.setAttribute("related", rs2);
            response.sendRedirect("ProductDetails.jsp");
            }
            catch(Exception e)
            {
            System.out.println(e);
            }
        }
        
        if(action!=null && action.equalsIgnoreCase("addtocart"))
        {
        
            String pid=request.getParameter("pid");
            String uid=request.getParameter("uid");
            String price=request.getParameter("price");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");      
            Date today =new Date();
            String Today=(sdf.format(today)).toString();
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="insert into cart(u_id,p_id,date,price) values('"+uid+"','"+pid+"','"+Today+"','"+price+"')";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                System.out.println(sql);
                                int rs=stmt.executeUpdate();
                                if(rs>0)
                                {
                                session.setAttribute("user", uid);
                                response.sendRedirect("checkout.jsp");
                                }
        }
            catch(Exception e)
            {
            System.out.println(e);
            }
        }
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String action=request.getParameter("action");
        System.out.println(action);
        if(action!=null && action.equalsIgnoreCase("REGISTER"))
        {
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String contact=request.getParameter("contact");
        
        try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="insert into sign_up(firstname,lastname,email,password,contact) values('"+firstname+"','"+lastname+"','"+email+"','"+password+"','"+contact+"')";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                int rs=stmt.executeUpdate();
                                if(rs>0)
                                {
                                    response.sendRedirect("account.html");
                                }
        }
        catch(Exception e)
        {
        System.out.println(e);
        }
        }
        
        if(action!=null && action.equalsIgnoreCase("login"))
        {
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
             
        try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liquormart","root","root");
				String sql="select * from sign_up where email='"+email+"' and password='"+pass+"'";
				PreparedStatement stmt=conn.prepareStatement(sql);
                                ResultSet rs=stmt.executeQuery();
                                if(rs.next())
                                {
                                    session.setAttribute("user",rs.getString(1));
                                    response.sendRedirect("index.html");
                                    
                                }
                                else
                                {
                                    response.sendRedirect("account.html");
                                }
        }
        catch(Exception e)
        {
        System.out.println(e);
        }
        }
        
        
    }


}
