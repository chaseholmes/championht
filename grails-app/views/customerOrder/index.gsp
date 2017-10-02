<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customerOrder.label', default: 'CustomerOrder')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        <div id="list-customerOrder" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table class="table table-striped">    
                    <thead>
                         <tr>                        
                            <g:sortableColumn property="id" title="Id" />
                            <g:sortableColumn property="customer" title="Customer" />
                            <g:sortableColumn property="store" title="Store" />
                            <g:sortableColumn property="items" title="Items" />
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${customerOrderList}" var="bean" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td><g:link action="show" id="${bean.id}">${fieldValue(bean: bean, field: "id")}</g:link></td>     
                                <td>${fieldValue(bean: bean, field: "customer.name")}</td>
                                <td>${fieldValue(bean: bean, field: "store.name")}</td>
                                <td>${bean.items.size()}</td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>



            <div class="pagination">
                <g:paginate total="${customerOrderCount ?: 0}" />
            </div>
        </div>
    </body>
</html>