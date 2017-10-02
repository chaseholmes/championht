<div class="form-group row fieldcontain  <g:if test="${required}">required</g:if>">
    <g:render template="/_fields/labelTemplate"/>
    <div class="col-md-6">
        <g:select name="${property}.id" from="${type.list()}" class="form-control" value="${value?.id ?: ''}" optionKey="id" optionValue="name" />
    </div>
</div>
