<%-- 
    Document   : index.jsp
    Created on : Sep 8, 2015, 6:24:16 PM
    Author     : emmakordik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="withEL/calculator.css">
        <title>Area Calculator</title>
    </head>
    <body>
        <div class="jumbotron">
            <h1>Area Calculator</h1>
        </div>
        <div class="container">
            <div class="row">
                <div id="rectangleCal" class=col-md-4>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                    <h3 class="panel-heading">Rectangle Area Calculator</h3>
                        </div>
                        <div class="panel-body">
                    <img src="Lab3/rectangle.gif" alt="Area of a Rectange">
                    <form id="recCalForm" name="recCalForm" method="POST" action="areaELCalculator?calcType=rectangle" class="form-inline">
                        <div class="form-group">
                            <label for="height">Height:</label>
                            <input type="text" id="height" name="height">
                        </div>
                        <div class="form-group">
                            <label for="width">Width: </label>
                            <input type="text" id="width" name="width"> 
                        </div>
                        <c:catch var="exception">
                            <input type="submit" id="recSubmit" name="recSubmit" class="btn btn-success">
                        </c:catch>
                    </form>
                         
                    <c:if test="${exception != null}" >
                        <p>Something went wrong.</p>
                    </c:if>
                        
                        <p>Height of the rectangle: ${height}<br>
                        Width of the rectangle: ${width}</p>
                        <p>The area of the rectangle is: 
                            <fmt:formatNumber type="number" value="${recArea}" pattern="#0.00" />
                        </p>
                    </div>
                </div>
                </div>
                        
                        
                <div id="circleCal" class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3>Circle Area Calculator</h3>
                        </div>
                        <div class="panel-body">
                            <img src="Lab3/area-circle.gif" alt="Area of a Circle" width="250px">
                            <form id="circleCalForm" name="circleCalForm" method="POST" action="areaELCalculator?calcType=circle">
                                <label for="radius">Radius:</label>
                                <input type="text" id="radius" name="radius"><br>
                                <input type="submit" id="circleSubmit" name="circleSubmit" class="btn btn-success">
                            </form>

                            <p>The radius is: ${radius}</p>
                            <p>The area of the circle is: 
                                <fmt:formatNumber type="number" value="${circleArea}" pattern="#0.00"/></p>
                </div>
                    </div>
                </div>
                <div id="triCal" class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                         <h3>Triangle Area Calculator</h3>
                        </div>
                        <div class="panel-body">
                    <img src="Lab3/triangle.gif" alt="Area of a triangle" width="250px">
                    <form id="triCalForm" name="triCalForm" method="POST" action='areaELCalculator?calcType=triangle'>
                        <label for="base">Base:</label>
                        <input type="text" id="base" name="base"><br>
                        <label for="triHeight">Height:</label>
                        <input type="text" id="triHeight" name="triHeight"><br>
                        <input type="submit" id="circleSubmit" name="circleSubmit" class="btn btn-success">
                    </form>
                    
                    <p>The base is: ${base}<br>
                        The height is: ${triHeight}</p>
                    <p>The area of the triangle is:
                        <fmt:formatNumber type="number" value="${triArea}" pattern="#0.00"/></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
              
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </body>
</html>
