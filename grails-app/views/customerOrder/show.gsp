<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customerOrder.label', default: 'CustomerOrder')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-customerOrder" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <f:with bean="customerOrder">    
                    
                    <f:display property="customer.name" wrapper="custom" label="Customer"/>       
                    <f:display property="store.name" wrapper="custom" label="Store"/>      
            </f:with>  
            

            <dt>Items</dt>

            <ul>
                <g:each var="orderItem" in="${customerOrder.items}">     
                 <li>
                        ${orderItem?.item.description}                     
                </li>                                   
                </g:each>
            </ul>            

            <g:form resource="${this.customerOrder}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit btn btn-primary" action="edit" resource="${this.customerOrder}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete btn btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
