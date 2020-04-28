<%--
  Created by IntelliJ IDEA.
  User: alexe
  Date: 28.04.2020
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Управление пользователями</title>
</head>
<body>
<center>
    <h1>Выберите</h1>
    <h2>
        <a href="new">Добавить пользователя</a>
        &nbsp;&nbsp;&nbsp;
        <a href="list">Список всех пользователей</a>

    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Список всех пользователе</h2></caption>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Возраст</th>
            <th>Действие</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.age}" /></td>
                <td>
                    <a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="delete?id=<c:out value='${user.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
