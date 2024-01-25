<!-- home.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Color Recommendation</title>
    <style>
        body {
            background-color: #f8f8f8;
            color: #333;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            overflow : hidden;
        }

        header {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 10px;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        nav a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }

        section {
            padding: 20px;
            text-align: center;
        }

        section h2 {
            color: #2c3e50;
        }

        section p {
            color: #555;
        }

        .color-suggestion {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .color-box {
            width: 100px;
            height: 100px;
            margin: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .screen-size {
        	transition : 1.5s;
		    transform: scale( 50.0 );
		}
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>

<!-- Header -->
<header>
    <h1>Color Recommendation</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">Home</a></li>
            <li><a href="colorPage1.jsp">Color Page 1</a></li>
            <li><a href="colorPage2.jsp">Color Page 2</a></li>
            <li><a href="colorPage3.jsp">Color Page 3</a></li>
            <li><a href="colorPage4.jsp">Color Page 4</a></li>
        </ul>
    </nav>
</header>

<!-- Section -->
<section>
    <h2>Explore Beautiful Colors</h2>
    <p>Discover a world of amazing colors and find the perfect palette for your projects!</p>

    <div class="color-suggestion">
    
    <% String [] color = {"red","orange", "yellow", "green", "blue", "purple"};
    	int firstColor = (int)(Math.random()*6);
    	int secondColor = (int)(Math.random()*6);
    	int thirdColor = (int)(Math.random()*6);
    	int fourthColor = (int)(Math.random()*6);
    	int fifthColor = (int)(Math.random()*6);
    	int sixthColor = (int)(Math.random()*6);
    %>
    
        <div class="color-box" style="background-color: <%=color[firstColor]%>"></div>
        <div class="color-box" style="background-color: <%=color[secondColor]%>"></div>
        <div class="color-box" style="background-color: <%=color[thirdColor]%>"></div>
        <div class="color-box" style="background-color: <%=color[fourthColor]%>"></div>
        <div class="color-box" style="background-color: <%=color[fifthColor]%>"></div>
        <div class="color-box" style="background-color: <%=color[sixthColor]%>"></div>
    </div>
</section>

<!-- Footer -->
<footer>
    <p>© 2024 Color Recommendation. All rights reserved.</p>
</footer>
   <script>
    window.onload=function(){
    	$('.color-box').on('click', function () {
    		$(this).toggleClass("screen-size");
    	})
    }
    </script>
</body>
</html>