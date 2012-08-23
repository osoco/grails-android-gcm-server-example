<p class="usage"><g:message code="sender.usage.projectId" /></p>
<g:form name="projectId" action="configureMessage">
    <div class="formEntryContainer">
        <div class="labelContainer">
            <label for="projectId"><g:message code="sender.form.projectId"/></label>
        </div>
        <div class="inputContainer">
            <g:textField name="projectId" value="${projectId}" />
        </div>
        <div class="actionsContainer">
            <g:submitButton name="refresh" value="${message(code:'refresh')}" />
        </div>
    </div>
</g:form>