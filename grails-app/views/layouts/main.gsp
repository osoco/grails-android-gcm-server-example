<!DOCTYPE html>
<g:if test="${request.xhr}">
    <g:render template="/layouts/mainContent" />
</g:if>
<g:else>
    <html>
        <head>
            <title><g:layoutTitle default="Grails" /></title>
            <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
            <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
            <g:layoutHead />
            <g:javascript library="application" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
            <script src="https://raw.github.com/deigote/ajaxify/master/ajaxify.js"></script>
        </head>
        <body>
            <div id="loading" class="loading" style="display:none;">
                <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
            </div>
            <div id="logo"><a href="/"><img src="${resource(dir:'images',file:'logo.png')}" alt="OSOCO" border="0" /></a></div>
            <div id="mainContent">
                <h1><g:message code="sender.title" /></h1>
                <p><g:message code="sender.appDescription" /></p>
                <p><g:message code="sender.usage" args="${[g.createLink(controller:'device', action:'subscribe', absolute:'true') + 'deviceToken=yourDeviceToken&projectId=yourProjectId']}"/></p>
                <g:render template="/layouts/mainContent" />
            </div>
            <div id="footer">
                <div id="wave">&nbsp;</div>
                <div id="osoco-fish">&nbsp;</div>
            </div>
        </body>
    </html>
</g:else>