
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" type="text/css">
        <title>Spring CRUD</title>
    </head>
    <body>
        
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Update User</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>First Name</label>
                        <input type="text" name="firstName" class="form-control" value="${list[0].firstName}">
                        <label>Last Name</label>
                        <input type="text" name="lastName" class="form-control" value="${list[0].lastName}">
                        <label>Email</label>
                        <input type="text" name="email" class="form-control" value="${list[0].email}">
                        <label>Telephone</label>
                        <input type="text" name="tp" class="form-control" value="${list[0].tp}">
                        <br>
                        <input type="submit" value="Update" class="btn btn-success">
                        <a href="index.htm"> View Users </a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
