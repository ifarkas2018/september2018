<%-- 
    Document   : search
    Created on : 18-Sep-2018, 00:54:05
    Author     : Ingrid Farkas
    I used mysql-connector-java-5.1.47-bin.jar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/templatecss.css" type="text/css" rel="stylesheet"/>
        <title>JSP Page</title>
        <%@ include file="header.jsp"%>
    </head>
    <body>
        <!-- <div>  
            <div style="float: left; margin-left: 100px; font-family:  serif; font-size: 13px;"> -->
        <%
        try{
            String book_title = request.getParameter("title"); %>
         <h1 style="width: 800px">bla bla <%out.print(book_title);%>
         
         %>
         <h1 style="margin-left: 40px;">Search Result</h1>
        
        <%
          Class.forName("com.mysql.jdbc.Driver");
          //Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore", "root", "root");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3305/bookstore?useSSL=false", "root", "bird&2018");  
            
         
          Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select title,isbn from book where title = '"+book_title+"'");  // ,book_location
         
         while(rs.next())
         {
             String book = rs.getString("title");
             String book_isbn = rs.getString("isbn");
             // String book_loc = rs.getString("book_location");
             %>
             <h1 style="width: 800px"> <%out.print(book);%><br><%
             out.print( "About book :"+book_isbn);
             %>.<br><%
             out.print( " ");
             %>
             <br> <br><a href="http://localhost:8080/MyBookStore/Novi Sad">Download</a></h1>
             
            <%
         }
        }catch(Exception e){
            
        }
     %>
     
     
     <!-- </div>
     <div style="float: righ;">
         
        <img src="image/Book_icon.png" width="250" height="500" id="image_spc" style="margin-left: 60px;">
     </div>
     
     </div> -->  
     <%@ include file="footer.jsp"%>
    </body>
</html>
