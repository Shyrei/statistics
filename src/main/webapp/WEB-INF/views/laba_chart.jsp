<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <title><spring:message code="title.data.charts"/></title>


    <script src="https://www.google.com/jsapi"></script>
    <script>
        // Load the Visualization API and the piechart package.
        google.load('visualization', '1.0', {
            'packages': ['corechart']
        });

        // Set a callback to run when the Google Visualization API is loaded.
        google.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            // Create the data table.
            var data = google.visualization.arrayToDataTable([
                ['Laboratory name', 'Number of students'],
                <c:forEach items="${pieDataList}" var="entry">
                ['${entry.name}', ${entry.studentsNumber}],
                </c:forEach>
            ]);
            // Set chart options
            var options = {
                'title': 'EPAM laboratory statistic: ',
                is3D: true,
                pieSliceText: 'label',
                tooltip: {showColorCode: true},
                'width': 800,
                'height': 500
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_div_left'));
            chart.draw(data, options);

            var histogram = new google.visualization.Histogram(document.getElementById('histogram_div_right'));
            histogram.draw(data, options);
        }
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-6" id="chart_div_left"></div>
        <div class="col-sm-6" id="histogram_div_right"></div>
    </div>
    <div class="row text-center" >
        <a href="${pageContext.request.contextPath}/" class="btn btn-primary">To main</a>
    </div>

</div>

</body>
</html>
