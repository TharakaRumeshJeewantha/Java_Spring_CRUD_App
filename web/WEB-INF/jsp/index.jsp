<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css">
        <title>Spring CRUD</title>
    </head>
        
    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-info" href="register.htm">+ New User</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>User ID</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Telephone</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${list}">
                            <tr>
                                <td>${user.uid}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.email}</td>
                                <td>${user.tp}</td>
                                <td>
                                    <a href="update.htm?uid=${user.uid}" class="btn btn-warning">Edit</a>
                                    <a href="delete.htm?uid=${user.uid}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
