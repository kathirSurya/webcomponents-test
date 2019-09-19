<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>webcomponents-test-master</title>
</head>
<body>
	
	<div class="col-sm-12">
	<div style="background-color: black;">
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>
	<div >	
		<tiles:insertAttribute name="body"></tiles:insertAttribute>
	</div>	
	<div style="background-color: black;">	
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>	
	</div>

</body>
</html>