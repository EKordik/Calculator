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
        <title>Area Calculator</title>
    </head>
    <body>
        <h1>Area Calculator</h1>
        
        <div id="rectangleCal">
            <h3>Rectangle Area Calculator</h3>
            <form id="recCalForm" name="recCalForm" method="POST" action="areaCalculator?calcType=rectangle">
                <label for="height">Height:</label>
                <input type="text" id="height" name="height"><br>
                <label for="width">Width: </label>
                <input type="text" id="width" name="width"><br>
                <input type="submit" id="recSubmit" name="recSubmit">
            </form>

            <% Object objRec = request.getAttribute("recArea");
                Double areaRec = 0.0;

                if(objRec != null){
                    areaRec = (Double)objRec;
                }
            %>
            <p>The area of the rectangle is: <%= areaRec %></p>
        </div>
        
        <div id="circleCal">
            <h3>Circle Area Calculator</h3>
            <form id="circleCalForm" name="circleCalForm" method="POST" action="areaCalculator?calcType=circle">
                <label for="radius">Radius:</label>
                <input type="text" id="radius" name="radius"><br>
                <input type="submit" id="circleSubmit" name="circleSubmit">
            </form>
             <% Object objCircle = request.getAttribute("circleArea");
                Double areaCircle = 0.0;

                if(objCircle != null){
                    areaCircle = (Double)objCircle;
                }
            %>
            <p>The area of the circle is: <%= areaCircle %></p>
        </div>
        
        <div id="triCal">
            <h3>Triangle Area Calculator</h3>
            <form id="triCalForm" name="triCalForm" method="POST" action='areaCalculator?calcType=triangle'>
                <label for="base">Base:</label>
                <input type="text" id="base" name="base"><br>
                <label for="triHeight">Height:</label>
                <input type="text" id="triHeight" name="triHeight"><br>
                <input type="submit" id="circleSubmit" name="circleSubmit">
            </form>
             <% Object objTri = request.getAttribute("triArea");
                Double areaTri = 0.0;

                if(objTri != null){
                    areaTri = (Double)objTri;
                }
            %>
            <p>The area of the triangle is: <%= areaTri %></p>
        </div>
    </body>
</html>
