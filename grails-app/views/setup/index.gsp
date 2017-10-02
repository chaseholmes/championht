<!doctype html>
<html>
    <head>
        <title>Home</title>
        <meta name="layout" content="main">
    </head>
    <body class="fixed-nav sticky-footer bg-dark" id="page-top">

            <p>
            Used for Testing to load default data into system.
            </p>

            <a class="btn btn-success" id="addData" >Load Default Data</a>            
            <div id="addDataResponse"></div>
                 
            <content tag="footScripts">
                    <script>
            
            
                        $("#addData").click(function() {

                            $("#addData").attr("disabled", true);
            
                            $.ajax({
                                    url: "/setup/loadData",
                                    type: "POST",
                                    cache: false,
                                    success: function(html) {
                                        $('#addDataResponse').append(html); 
                                    },
                                    error:function(respond){
                                        $('#addDataResponse').append('There was an error. The data most likely has already been loaded');
                                    }
                                });
                        });
                   
            
                    </script>
            </content>       
    </body>
</html>