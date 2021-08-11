<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lookify Top Ten Songs</title>
    </head>
    <body>
        <h1>Top Ten Songs</h1>
        <a href="/dashboard">Dashboard</a>
	    <ul>
	        <c:forEach items="${songs}" var="song">
		        <li>
		        	<span><c:out value="${song.rating}"/> - </span>
		            <a href="/songs/${song.id}"><c:out value="${song.name}"/></a>
		            <span> - <c:out value="${song.artist}"/></span>
		        </li>
	        </c:forEach>
	    </ul>		 
    </body>
</html>