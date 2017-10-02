<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customerOrder.label', default: 'CustomerOrder')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-customerOrder" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.customerOrder}">
            <div class="alert alert-danger">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.customerOrder}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.customerOrder}" method="PUT">
                <g:hiddenField name="version" value="${this.customerOrder?.version}" />
                <fieldset class="form">
                    <g:render template="form" />        
                </fieldset>
                <fieldset class="buttons">
                    <input class="save btn btn-success" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
            <hr>
            <g:render template="item" />                    
        </div>
    </body>
</html>
