<%@ page import="java.util.List" %>
<%@ page import="rikkei.academy.customerjspl.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Customer</title>
</head>
<body>

<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Nguyễn Văn A","1990-03-12","Hà Tây","img/default-avatar.webp"));
    customerList.add(new Customer("Nguyễn Văn B","1991-04-13","Hà Nội","img/default-avatar.webp"));
    customerList.add(new Customer("Nguyễn Văn C","1992-05-14","Hà Nam","img/default-avatar.webp"));
    customerList.add(new Customer("Nguyễn Văn D","1993-06-15","Hà Lòi","img/default-avatar.webp"));
    pageContext.setAttribute("Listcustormer",customerList);
%>
<table border="1" width="100%">
    <tr>
        <th>Name</th>
        <th>Ngày Sinh</th>
        <th>Address</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="name" items="${Listcustormer}">
        <tr>
            <td><c:out value="${name.name}"></c:out></td>
            <td><c:out value="${name.date}"></c:out></td>
            <td><c:out value="${name.address}"></c:out></td>
            <td><img width="200" src="${name.image}"></td>
            
        </tr>
    </c:forEach>

</table>
</body>
</html>