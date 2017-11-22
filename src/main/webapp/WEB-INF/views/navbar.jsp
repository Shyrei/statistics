<nav class="navbar navbar-default navbar-static-top" style="background: #6E7FA4">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <a class="btn btn-default navbar-form navbar-left" href="?lang=en"><spring:message code="message.language.en"/></a>
            <a class="btn btn-default navbar-form navbar-left" href="?lang=ru"><spring:message code="message.language.ru"/></a>

            <form action="${pageContext.request.contextPath}/view-json" class="navbar-form navbar-right">
                <button type="submit" class="btn btn-default"><spring:message code="button.view.data.json"/></button>
            </form>

            <form action="${pageContext.request.contextPath}/view-table" class="navbar-form navbar-right">
                <button type="submit" class="btn btn-default"><spring:message code="button.view.data.table"/></button>
            </form>

            <form action="${pageContext.request.contextPath}/view-chart" class="navbar-form navbar-right">
                <button type="submit" class="btn btn-default"><spring:message code="button.view.data.charts"/></button>
            </form>

            <form action="${pageContext.request.contextPath}/view-pdf" class="navbar-form navbar-right">
            <button type="submit" class="btn btn-default"><spring:message code="button.view.data.pdf"/></button>
        </form>

        </div>
    </div>
</nav>