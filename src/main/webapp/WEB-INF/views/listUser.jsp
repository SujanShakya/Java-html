<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
<div>
    <div>
        <a href = "add_user">Add User</a>
    </div>
    <c:if test ="${!empty users}">
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Username</th>
                <th>Password</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>MobileNo</th>
                <th>Email</th>
                <th>Hobbies</th>
                <th>Nationality</th>
                <th>comments</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <C:forEach items ="${users}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.username}</td>
                    <td>${u.password}</td>
                    <td>${u.gender}</td>
                    <td>${u.dob}</td>
                    <td>${u.mobileNo}</td>
                    <td>${u.email}</td>
                    <td>${u.hobbies}</td>
                    <td>${u.nationality}</td>
                    <td>${u.comments}</td>
                    <td>
                        <a href="edit_user?id=${u.id}">Edit</a>
                        <a href="delete_user?id=${u.id}">Edit</a>
                    </td>
                </tr>
            </C:forEach>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>