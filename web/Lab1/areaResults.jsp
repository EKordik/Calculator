<%-- 
    Document   : results.jsp
    Created on : Sep 8, 2015, 6:31:51 PM
    Author     : emmakordik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Area Results</title>
    </head>
    <body>
        <h1>Rectangle Area Results</h1>
        
        <% Object objRec = request.getAttribute("total");
            Double areaRec = 0.00;
            
            if(objRec != null){
                areaRec = (Double)objRec;
            }
       
            %>
        
        <p>The area of the rectangle is:<%= areaRec %></p>
    </body>
</html>
