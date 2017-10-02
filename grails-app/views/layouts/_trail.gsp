<g:if test="${controllerName}"> 
</ol>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="${createLink(uri:'/')}"><g:message code="controller.${home}" default="Home" /></a></li>           
    <g:if test="${actionName == 'index'}">        
        <li class="breadcrumb-item active"><g:message code="${controllerName}.label" default="${controllerName}" /></li>        
    </g:if>
    <g:else>               
        <li class="breadcrumb-item"><a href="${createLink(uri:'/'+controllerName)}"><g:message code="${controllerName}.label" default="${controllerName}" /></a></li>
        <li class="breadcrumb-item active"><g:message code="default.${actionName}.label" args=" " default="${actionName}" /></li>
    </g:else>        
</ol>
</g:if>

