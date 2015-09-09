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
        <link rel="stylesheet" href="withEL/calculator.css">
        <title>Area Calculator</title>
    </head>
    <body>
        <h1>Area Calculator</h1>
        
        <div id="rectangleCal" class="container">
            <h3>Rectangle Area Calculator</h3>
            <img src="Lab3/rectangle.gif" alt="Area of a Rectange">
            <form id="recCalForm" name="recCalForm" method="POST" action="areaELCalculator?calcType=rectangle">
                <label for="height">Height:</label>
                <input type="text" id="height" name="height"><br>
                <label for="width">Width: </label>
                <input type="text" id="width" name="width"><br>
                <input type="submit" id="recSubmit" name="recSubmit">
            </form>

            <p>Height of the rectangle: ${height}<br>
            Width of the rectangle: ${width}</p>
            <p>The area of the rectangle is: ${recArea}</p>
        </div>
        
        <div id="circleCal" class="container">
            <h3>Circle Area Calculator</h3>
            <img src="Lab3/area-circle.gif" alt="Area of a Circle">
            <form id="circleCalForm" name="circleCalForm" method="POST" action="areaELCalculator?calcType=circle">
                <label for="radius">Radius:</label>
                <input type="text" id="radius" name="radius"><br>
                <input type="submit" id="circleSubmit" name="circleSubmit">
            </form>
             
            <p>The radius is: ${radius}</p>
            <p>The area of the circle is: ${circleArea}</p>
        </div>
        
        <div id="triCal" class="container">
            <h3>Triangle Area Calculator</h3>
            <img src="Lab3/triangle.gif" alt="Area of a triangle">
            <form id="triCalForm" name="triCalForm" method="POST" action='areaELCalculator?calcType=triangle'>
                <label for="base">Base:</label>
                <input type="text" id="base" name="base"><br>
                <label for="triHeight">Height:</label>
                <input type="text" id="triHeight" name="triHeight"><br>
                <input type="submit" id="circleSubmit" name="circleSubmit">
            </form>
     
            <p>The base is: ${base}<br>
                The height is: ${triHeight}</p>
            <p>The area of the triangle is: ${triArea}</p>
        </div>
    </body>
</html>
