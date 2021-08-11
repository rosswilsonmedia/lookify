<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title><c:out value="${song.name}"></c:out></title>
    </head>
    <body>
    	<a href="/dashboard">Dashboard</a>
        <h1><c:out value="${song.name}"></c:out></h1>
        <p>Artist: <c:out value="${song.artist}"></c:out></p>
        <p>Rating: <c:out value="${song.rating}"></c:out></p>
       <%--  <a href="/songs/${song.id}/edit">Edit</a> --%>
        <form action="/songs/${song.id}" method="post">
    		<input type="hidden" name="_method" value="delete">
    		<input type="submit" value="Delete">
		</form>
    </body>
</html>