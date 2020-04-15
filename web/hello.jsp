<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 5</title>
    </head>
    <body>
        <!--Wyrażenie EL formatuje tekst, a JSTL tylko go wyswietla--> 
        
        <h1>Cześć ${osoba.firstName} ${osoba.lastName}!</h1>
        <h3><a href='mailto:${osoba.email}'>${osoba.email}</a></h3>
        
        <c:forEach items='${dniTygodnia}' var="dzien">
            <p>
                ${dzien}
            </p>
        </c:forEach>    
        <br>
       
        <h1>Cześć <c:out value="${osoba.firstName}"/> <c:out value="${osoba.lastName}"/>!</h1>
        <h3><a href='mailto:<c:out value="${osoba.email}"/>'><c:out value="${osoba.email}"/></a></h3>
        
        <c:forEach items='<c:out value="${dniTygodnia}"/>' var="dzien">
            <p>
                <c:out value="${dzien}"/>
            </p>
        </c:forEach>       
    </body>
</html>
