<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        <div id="list-item" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           

            <table class="table table-striped">    
                    <thead>
                         <tr>                        
                            <g:sortableColumn property="catalogNumber" title="Catalog Number" />
                            <g:sortableColumn property="description" title="Description" />
                            <g:sortableColumn property="price" title="Price" />
                            <g:sortableColumn property="type" title="Type" />
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${itemList}" var="bean" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td><g:link action="show" id="${bean.id}">${fieldValue(bean: bean, field: "catalogNumber")}</g:link></td>                            
                                <td>${fieldValue(bean: bean, field: "description")}</td>
                                <td>${fieldValue(bean: bean, field: "price")}</td>
                                <td>${fieldValue(bean: bean, field: "type.name")}</td>                          
                            </tr>
                        </g:each>
                    </tbody>
                </table>
    
            <div class="pagination">
                <g:paginate total="${itemCount ?: 0}" />
            </div>
        </div>
    </body>
</html>