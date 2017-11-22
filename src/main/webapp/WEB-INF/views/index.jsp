<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <title><spring:message code="title.main"/></title>
</head>
<body>
<%@ include file="navbar.jsp" %>
<br>
<div class="container-fluid">
    <div class="row text-center">
        <h2 class="text-center"><spring:message code="message.main"/></h2>
    </div>
</div>
</body>
</html>