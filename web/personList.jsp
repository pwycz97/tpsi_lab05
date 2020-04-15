<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 5</title>
    </head>
    <body>
        <h3>Lista osób przystępujących do egzaminu:</h3>
        <table border="1">
            <tr>
                <th>Imię</th><th>Nazwisko</th><th>Adres e-mail</th>
            </tr>
            <c:forEach items="${osoby}" var="osoba">
                <tr>
                    <td>${osoba.firstName}</td><td>${osoba.lastName}</td><td>${osoba.email}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
