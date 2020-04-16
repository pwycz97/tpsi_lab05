<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 5</title>
    </head>
    <body>
        <a href='index.html'>POWRÓT DO STRONY GŁÓWNEJ</a>
        <h5>Liczba odwiedzin na stronie: ${sessionScope["licznik"]}</h5>   
        <hr>
        
        <h3>Lista studentów:</h3>
        <table border="1">
            <tr>
                <th>Imię</th><th>Nazwisko</th><th>Adres e-mail</th>
            </tr>
            <c:forEach items="${studenci}" var="student">
                <tr>
                    <td>${student.firstName}</td><td>${student.lastName}</td><td>${student.email}</td>
                </tr>
            </c:forEach>
        </table>
        
        <hr>
        <h3>Dodawanie studenta</h3>
        <form action='studentList' method='post'>
            Wprowadź dane poniżej:<br>
            <label for='firstName'>Imię: </label>
            <input type='text' id='firstName' name='firstName'><br>
            <label for='lastName'>Nazwisko: </label>
            <input type='text' id='lastName' name='lastName'><br>
            <label for='email'>Adres e-mail: </label>
            <input type='text' id='email' name='email'><br>
            <input type='submit' value='Dodaj'>
        </form>
    </body>
</html>
