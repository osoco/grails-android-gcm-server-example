<g:if test="${flash.message}">
    <div class="message">
        <g:message code="${flash.message}" args="${flash.args}"  />
    </div>
</g:if>
<g:layoutBody />