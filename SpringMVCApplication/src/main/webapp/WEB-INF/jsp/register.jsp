<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Customer Registration</h2>
	<form:form id="regForm" modelAttribute="register" action="registerCust" method="post">
        <table>
                <tr>
                 <td><form:label path="custid">Customer ID</form:label></td>
                 <td><form:input path="custid" name="custid"/>
                 </td>
                </tr>
                <tr>
                 <td><form:label path="custName">Customer Name</form:label></td>
                 <td><form:input path="custName" name="custName"/>
                 </td>
                </tr>
                <tr>
                 <td><form:label path="email">Customer Email</form:label></td>
                 <td><form:input path="email" name="email"/>
                 </td>
                </tr>
                <tr>
                 <td></td>
                 <td><form:button id="registerbtn">Register</form:button>
                 </td>
                </tr>
        </table>
        </form:form>
</body>
</html>