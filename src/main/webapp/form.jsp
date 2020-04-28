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
    <c:if test="${user != null}">
    <form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${user != null}">
                            Редактировать
                        </c:if>
                        <c:if test="${user == null}">
                            Добавить
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>
                <tr>
                    <th>Имя пользователя: </th>
                    <td>
                        <input type="text" name="name" size="45"
                               value="<c:out value='${user.name}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Возраст: </th>
                    <td>
                        <input type="text" name="age" size="45"
                               value="<c:out value='${user.age}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
