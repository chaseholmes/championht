<!doctype html>
<html>
    <head>
        <title>Home</title>
        <meta name="layout" content="main">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
    
        <div class="container">      
            <div class="">            
                <div class="col-xs-12 col-md-6">
                    <h2>Recent Customers</h2>
                    <table id="customerTable" class="display compact" cellspacing="0" width="100%">
                    </table>
                </div>
                <div class="col-xs-12 col-md-6">
                    <h2>Recent Orders</h2>
                    <table id="orderTable" class="display compact" cellspacing="0" width="100%">
                    </table>
                </div>
            </div>
        </div>
        <content tag="footScripts">
                <asset:javascript src="home.js" />
        </content>        
    </body>
</html>