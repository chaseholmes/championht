<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        <div id="list-store" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


   
            <table class="table table-striped">    
                    <thead>
                         <tr>                        
                            <g:sortableColumn property="name" title="Name" />
                            <g:sortableColumn property="address.street" title="Street" />
                            <g:sortableColumn property="address.city" title="City" />
                            <g:sortableColumn property="address.state" title="State" />
                            <g:sortableColumn property="address.zip" title="Zip" />
                            <g:sortableColumn property="address.phone" title="Phone" />
                            <g:sortableColumn property="birthDate" title="Item Types" />
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${storeList}" var="bean" status="i">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td><g:link action="show" id="${bean.id}">${fieldValue(bean: bean, field: "name")}</g:link></td>                            
                                <td>${fieldValue(bean: bean, field: "address.street")}</td>
                                <td>${fieldValue(bean: bean, field: "address.city")}</td>
                                <td>${fieldValue(bean: bean, field: "address.state")}</td>
                                <td>${fieldValue(bean: bean, field: "address.zip")}</td>
                                <td>${fieldValue(bean: bean, field: "address.phone")}</td>                  
                                <td>${bean.itemTypes.size()}</td>
                            </tr>
                        </g:each>
                    </tbody>
                </table>


            <div class="pagination">
                <g:paginate total="${storeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>