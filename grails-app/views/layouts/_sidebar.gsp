<nav id="sidebar">    
    <!-- <div class="sidebar-header">
        <h1>Demo App</h1>
    </div> -->
    <ul class="list-unstyled components">            
    <li class="${!controllerName ? 'active': ''}">
        <a href="${createLink(uri:'/')}">Home</a>
    </li>
    <li class="${controllerName == 'customer' ? 'active': ''}"> 
        <a href="${createLink(uri:'/customer/index')}">Customer</a>
    </li>
    <li class="${controllerName == 'store' ? 'active': ''}"> 
        <a href="${createLink(uri:'/store/index')}">Store</a>
    </li>
    <li class="${controllerName == 'customerOrder' ? 'active': ''}"> 
        <a href="${createLink(uri:'/customerOrder/index')}">Order</a>
    </li>
    <li class="${controllerName == 'item' ? 'active': ''}"> 
        <a href="${createLink(uri:'/item/index')}">Item</a>
    </li>    
    <li class="${controllerName == 'itemType' ? 'active': ''}"> 
        <a href="${createLink(uri:'/itemType/index')}">Item Type</a>
    </li>   
    <li class="${controllerName == 'setup' ? 'active': ''}"> 
        <a href="${createLink(uri:'/setup/index')}">Setup</a>
    </li>        
</ul>
</nav>


<!-- class="${controllerName == 'customer' ? 'active': ''}" -->