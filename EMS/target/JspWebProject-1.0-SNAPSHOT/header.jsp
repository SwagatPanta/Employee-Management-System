

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMS</title>
        <link rel="stylesheet" href="asset/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="asset/style.css"/>
        <script src="asset/jquery-2.2.3.min.js"></script>
        <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
        <script src="asset/bootstrap/js/bootstrap.min.js"></script>

        <!--jquery/javascript-->
        <script>
            $(function() {
                $( "#datepicker" ).datepicker();
            });
        </script>

    </head>
    <body>
        <div class="container">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">EMS</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li><a href="home.jsp">Home</a></li>
                        <li><a href="department.jsp">Department</a></li>
                        <li><a href="employe.jsp">Employee</a></li> 
                        <li><a href="employesalary.jsp">Employee salary</a></li>                         
                        <li><a href="employeDepartment.jsp">Employee Department</a></li> 
                    </ul>
                </div>
            </nav>



