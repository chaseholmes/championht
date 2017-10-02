$(document).ready(function() {
    $('#customerTable').DataTable( {
        "paging":   false,
        "ordering": false,
        "info":     false,    
        "searching":     false,    
        "ajax": {
                "url": "/customer.json?sort=lastUpdated&max=10&order=asc",                
                "dataSrc": function ( json ) {                    
                    return json;
                }
        },
        "columns": [

            {
                "mData": "Name",
                "mRender": function (data, type, row) {                                                              
                    return  "<a href='/customer/show/" + row.id + "'>" + row.name + "</a>";
                }
            }

        ]            
    })

   
    $('#orderTable').DataTable( {
        "paging":   false,
        "ordering": false,
        "info":     false,    
        "searching":     false,    
        "ajax": {
                "url": "/customerOrder.json?sort=lastUpdated&max=10&order=asc",                
                "dataSrc": function ( json ) {                    
                    return json;
                }
        },
        "columns": [
            {
                "mData": "Name",
                "mRender": function (data, type, row) {                                                              
                    return  "<a href='/customerOrder/show/" + row.id + "'>" + row.customer.name + "</a>";
                }
            },
            {
                "data": "store.name"            
            }            
        ]            
    })
           

});