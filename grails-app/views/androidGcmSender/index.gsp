<html>
    <head>
        <meta name="layout" content="main" />
        <title><g:message code="sender.title" /></title>
    </head>
    <body>
        <div id="message">
            <g:render template="configureProjectId" />
            <g:if test="${projectId}">
                <g:render template="configureMessage" />
            </g:if>
        </div>
        <script type="text/javascript">
            ajaxifyLink("form[name='projectId']", "#message", "action", "submit", "POST");
            jQuery("input[name='projectId']").change(function(e) {
                jQuery(form[name='projectId']).submit();
            });
        </script>
    </body>
</html>
