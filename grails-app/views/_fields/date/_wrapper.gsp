<div class="form-group row fieldcontain  <g:if test="${required}">required</g:if>">
    <g:render template="/_fields/labelTemplate"/>
    <div class="col-md-6">                         
        <input name="${property}" value="${value}" class="datepicker form-control" />
    </div>
</div>