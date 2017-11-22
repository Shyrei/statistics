<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title><spring:message code="title.data.table"/></title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <table class="table table-bordered">
            <thead>
            <tr>
                <td>Laboratory ID</td>
                <td>Laboratory name</td>
                <td>Number of student</td>
            </tr>
            </thead>
            <c:forEach items="${laboratories}" varStatus="сounter">
                <tr>
                    <td>${laboratories[сounter.count-1].id}</td>
                    <td>${laboratories[сounter.count-1].name}</td>
                    <td>${laboratories[сounter.count-1].studentsNumber}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="${pageContext.request.contextPath}/" class="btn btn-primary">To main</a>
    </div>
</div>




<div id="chart_div"></div>




</body>
</html>

