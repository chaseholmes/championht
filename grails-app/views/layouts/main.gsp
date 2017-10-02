<!DOCTYPE html>
<html
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><g:layoutTitle default="Champion Healthcare Technologies"/></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
        <asset:stylesheet src="application.css"/>


        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
        
        

        <g:layoutHead/>
</head>
<body>    
  <g:render template="/layouts/navbar"/>
  <div class="wrapper">
    <g:render template="/layouts/sidebar"/>         
    <div id="content" >        
        <g:render template="/layouts/trail"/> 
        <g:layoutBody/>
        <g:pageProperty name="page.body"/>
    </div>
    <asset:javascript src="application.js"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.10.16/r-2.2.0/datatables.min.js"></script>

    <!-- Custom placeholder for page scripts -->
    <g:ifPageProperty name="page.footScripts">
        <g:pageProperty name="page.footScripts" />
    </g:ifPageProperty>


    <asset:deferredScripts/>      
</body>
</html>