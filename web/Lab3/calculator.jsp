<%-- 
    Document   : index.jsp
    Created on : Sep 8, 2015, 6:24:16 PM
    Author     : emmakordik
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Lab3/calculator.css">
        <title>Area Calculator</title>
    </head>
    <body>
        <%! NumberFormat format = new DecimalFormat("#0.00");
        %>
        <h1>Area Calculator</h1>
        
        <div id="rectangleCal" class="container">
            <h3>Rectangle Area Calculator</h3>
            <img src="Lab3/rectangle.gif" alt="Area of a Rectange">
            <form id="recCalForm" name="recCalForm" method="POST" action="areaCalculator?calcType=rectangle">
                <label for="height">Height:</label>
                <input type="text" id="height" name="height"><br>
                <label for="width">Width: </label>
                <input type="text" id="width" name="width"><br>
                <input type="submit" id="recSubmit" name="recSubmit">
            </form>

            <% Object objRec = request.getAttribute("recArea");
                Object objHeight = request.getAttribute("height");
                Object objWidth = request.getAttribute("width");
                String areaRec = "";
                String height = "";
                String width ="";
                
                if(objRec != null){
                    Double temp = (Double)objRec;
                    areaRec = format.format(temp);
                }
                
                if(objHeight != null && objWidth != null){
                    height = (String)objHeight;
                    width = (String)objWidth;
                }
            %>
            <p>Height of the rectangle: <%= height%><br>
            Width of the rectangle: <%= width%></p>
            <p>The area of the rectangle is: <%= areaRec %></p>
        </div>
        
        <div id="circleCal" class="container">
            <h3>Circle Area Calculator</h3>
            <img src="Lab3/area-circle.gif" alt="Area of a Circle">
            <form id="circleCalForm" name="circleCalForm" method="POST" action="areaCalculator?calcType=circle">
                <label for="radius">Radius:</label>
                <input type="text" id="radius" name="radius"><br>
                <input type="submit" id="circleSubmit" name="circleSubmit">
            </form>
             <% Object objCircle = request.getAttribute("circleArea");
                Object objRadius = request.getAttribute("radius");
                String areaCircle = "";
                String radius = "";
                
                if(objCircle != null){
                    Double temp = (Double)objCircle;
                    areaCircle = format.format(temp);
                }
                
                if(objRadius != null){
                    radius = (String)objRadius;
                }
            %>
            <p>The radius is: <%= radius %></p>
            <p>The area of the circle is: <%= areaCircle %></p>
        </div>
        
        <div id="triCal" class="container">
            <h3>Triangle Area Calculator</h3>
            <img src="Lab3/triangle.gif" alt="Area of a triangle">
            <form id="triCalForm" name="triCalForm" method="POST" action='areaCalculator?calcType=triangle'>
                <label for="base">Base:</label>
                <input type="text" id="base" name="base"><br>
                <label for="triHeight">Height:</label>
                <input type="text" id="triHeight" name="triHeight"><br>
                <input type="submit" id="triSubmit" name="triSubmit">
            </form>
             <% Object objTri = request.getAttribute("triArea");
                String areaTri = "";
                Object objTriHeight = request.getAttribute("triHeight");
                Object objBase = request.getAttribute("base");
                String triHeight = "";
                String base ="";
                
                if(objTri != null){
                    Double temp = (Double)objTri;
                    areaTri = format.format(temp);
                }
                
                if(objBase != null && objTriHeight != null){
                    triHeight = (String)objTriHeight;
                    base = (String)objBase;
                }
            %>
            <p>The base is: <%= base %><br>
                The height is: <%= triHeight %></p>
            <p>The area of the triangle is: <%= areaTri %></p>
        </div>
    </body>
</html>
