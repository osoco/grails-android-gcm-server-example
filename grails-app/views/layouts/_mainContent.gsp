<g:if test="${flash.message}">
    <div class="message flash">
        <g:message code="${flash.message}" args="${flash.args}"  />
    </div>
</g:if>
<g:layoutBody />
<g:if test="${request.xhr && flash.message}">
    <script type="text/javascript">
        jQuery("div.flash.message").show("slide", { direction: "up" }, 300);
        jQuery("div.flash.message").effect("bounce", { times: 3, distance: 10 }, 200);
    </script>
</g:if>