<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Song</title>
    </head>
    <body>
        <a href="/dashboard">Dashboard</a>
        <h1>New Song</h1>
		<form:form action="/songs" method="post" modelAttribute="song">
		    <p>
		        <form:label path="name">Name</form:label>
		        <form:input path="name"/>
		        <form:errors path="name"/>
		    </p>
		    <p>
		        <form:label path="artist">Artist</form:label>
		        <form:input path="artist"/>
		        <form:errors path="artist"/>
		    </p>
		    <p>
		        <form:label path="rating">Rating (1-10)</form:label>
		        <form:input type="number" min="1" max="10" value="5" path="rating"/>
		        <form:errors path="rating"/>
		    </p>
		    <input type="submit" value="Add Song"/>
		</form:form>
    </body>
</html>