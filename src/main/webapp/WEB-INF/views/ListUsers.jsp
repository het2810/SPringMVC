<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored = "false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ListUsers</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    th {
      font-weight: bold;
      background-color: #f5f5f5;
    }

    td, th {
      padding: 10px;
      text-align: left;
      border: 1px solid #ddd;
    }

    tbody tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    a {
      display: inline-block;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      margin-right: 10px;
    }

    a:hover {
      background-color: #3e8e41;
    }
  </style>
</head>
<body>
  <table>
    <thead>
      <tr>
        <th>User ID</th>
        <th>First Name</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${users}" var="user">
        <tr>
          <td>${user.userId}</td>
          <td>${user.firstName}</td>
          <td>${user.email}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
  <br><br>
  <a href="login">Login </a><br><br>
  <a href="signup">Signup</a>
</body>
</html>
