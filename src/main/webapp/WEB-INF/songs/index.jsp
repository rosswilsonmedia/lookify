<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lookify</title>
    </head>
    <body>
        <h1>All Songs</h1>
        <a href="/songs/new">Add New Song</a>
        <a href="/search/topten">Top Ten Songs</a>
        <form action="/search" method="post">
        	<input type="text" name="query">
        	<input type="submit" value="Search">
        </form>
		<table>
		    <thead>
		        <tr>
		            <th>Name</th>
		            <th>Artist</th>
		            <th>Rating</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach items="${songs}" var="song">
			        <tr>
			            <td><a href="/songs/${song.id}"><c:out value="${song.name}"/></a></td>
			            <td><c:out value="${song.artist}"/></td>
			            <td><c:out value="${song.rating}"/></td>
			            <td>
			            	<form action="/songs/${song.id}" method="post">
			            		<input type="hidden" name="_method" value="delete"/>
			            		<input type="submit" value="delete"/>
			            	</form>
			            </td>
			        </tr>
		        </c:forEach>
		    </tbody>
		</table>
		 
    </body>
</html>