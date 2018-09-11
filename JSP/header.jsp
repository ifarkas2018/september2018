<%-- 
    Document   : header
    Created on : 02-Sep-2018, 01:50:03
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="index5.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Aqua Bookstore</title>
        <style>
            .jumbotron { 
                background-color: #f4511e; /* Orange */
                color: #ffffff;
                height: 200px;
            }
        </style>
    </head>
    <body>
    
        <!-- 
            6 - Navbar with brand left, links left and right, toggler right
            The links collapse into the mobile menu
        -->
        <nav class="navbar navbar-expand-md navbar-dark bg-info">
            <a href="/" class="navbar-brand">Aqua Books</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar6">
                <span class="navbar-toggler-icon"></span>
            </button>
        <div class="navbar-collapse collapse justify-content-stretch" id="navbar6">
            <ul class="navbar-nav">
                <li class="nav-item active"> <!--  active -->
                    <a class="nav-link" href="#">Page 1<span class="sr-only">Home</span></a> 
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="page62.html">Page 2</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="//codeply.com">Codeply</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
            </ul>
        </div>
        </nav>

        <div class="jumbotron text-center">
            <h1>Company</h1> 
            <p>We specialize in blablabla</p>  
        </div>

    </body>
</html>
