
<div class="row">
        <div class="span2 display-label">Name</div>
        <div class="span4 display-values">
            <p>${fieldValue(bean: bean, field: "name")}</p>
        </div>
</div>
<div class="row">
    <div class="span2 display-label">Street</div>
    <div class="span4 display-values">
        <p>${fieldValue(bean: bean, field: "address.street")}</p>
    </div>
</div>
<div class="row">
    <div class="span2 display-label">City</div>
    <div class="span4 display-values">
         <p>${fieldValue(bean: bean, field: "address.city")}</p>
    </div>
</div>
<div class="row">
    <div class="span2 display-label">State</div>
    <div class="span4 display-values">
         <p>${fieldValue(bean: bean, field: "address.state")}</p>
    </div>
</div>
<div class="row">
    <div class="span2 display-label">Zip</div>
    <div class="span4 display-values">
        <p>${fieldValue(bean: bean, field: "address.zip")}</p>
    </div>
</div>
<div class="row">
    <div class="span2 display-label">Phone</div>
    <div class="span4 display-values">
        <p>${fieldValue(bean: bean, field: "address.phone")}</p>
    </div>
</div>
<div class="row">
        <div class="span2 display-label">Items Types</div>
        <div class="span4 display-values">          
            <ul>
                <g:each var="itemtype" in="${bean.itemTypes}">     
                    <li>
                        ${itemtype?.name}                     
                </li>                                   
                </g:each>
            </ul>   


        </div>
</div>
