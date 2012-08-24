<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="sender.title" /></title>
    </head>
    <body>
        <div id="projectIdConfiguration">
            <g:render template="configureProjectId" />
        </div>
        <div id="messageConfiguration">
            <g:if test="${projectId}">
                <g:render template="configureMessage" />
            </g:if>
        </div>
        <script type="text/javascript">
            ajaxifyLink("form[name='projectId']", "#content", "action", "submit", "POST");
            jQuery("input[name='projectId']").change(function(e) {
                jQuery(form[name='projectId']).submit();
            });
        </script>
        <g:if test="${request.xhr && projectId && !flash.message}">
            <script type="text/javascript">
                jQuery("div#messageConfiguration").show("slide", { direction: "up" }, 300);
                jQuery("div#messageConfiguration").effect("bounce", { times: 3, distance: 10 }, 200);
            </script>
        </g:if>
    </body>
</html>
