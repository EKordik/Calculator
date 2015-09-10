<%-- 
    Document   : index.jsp
    Created on : Sep 8, 2015, 6:24:16 PM
    Author     : emmakordik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Area Calculator</title>
    </head>
    <body>
        <h1>Rectangle Area Calculator</h1>
        
        <form id="recCal" name="recCal" method="POST" action="../calculator">
            <label for="height">Height:</label>
            <input type="text" id="height" name="height"><br>
            <label for="width">Width: </label>
            <input type="text" id="width" name="width"><br>
            <input type="submit" id="recSubmit" name="recSubmit">
        </form>
        
    </body>
</html>
