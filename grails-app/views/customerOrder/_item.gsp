<h2>Items</h2>


<g:select id="itemSelect" name="itemSelect" from="${storeItems}" optionKey="id" optionValue="description"></g:select>


<input id="quantityInput" type="number"></input>


<a class="btn btn-success" id="addItem" >Add</a>

<table id="orderItemTable" class="display compact" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>Item</th>
            <th>Type</th> 
            <th>Quantity</th>
            <th>Price</th>
            <th>Remove</th>
        </tr>
    </thead>    
</table>
          
<content tag="footScripts">
        <script>
            var orderItemTable;

            $(document).ready(function() {

                var orderId = ${customerOrder.id};                
                orderItemTable = $('#orderItemTable').DataTable( {
                    "paging":   false,
                    "ordering": false,
                    "info":     false,    
                    "searching":     false,    
                    "ajax": {
                            "url": "/orderItem.json?customerOrder=" + orderId,
                            "dataSrc": function ( json ) {                    
                                return json;
                            }
                    },
                    "columns": [
                        { "data": "item.description" },
                        { "data": "item.type.name" },
                        { "data": "quantity" },
                        { "data": "item.price" },
                        {
                            "mData": "Name",
                            "mRender": function (data, type, row) {                                                              
                                return   "<a onclick='deleteItem(" + row.id +")' name='deleteItem' class='btn btn-danger'>Remove</a>";
                            }
                        }

                    ]            
                });                
            });

            function deleteItem(itemId)  {
                
                var itemToDelete = {id : itemId};
                $.ajax({
                        url: "/orderItem/delete.json",
                        //type: "DELETE",
                        type: "POST",
                        data:  itemToDelete,
                        cache: false,
                        success: function(html) {
                            orderItemTable.ajax.reload();
                        }
                    });
            };

            $("#addItem").click(function() {

                var newItem = {};

                newItem.customerOrder = ${customerOrder.id};
                newItem.quantity = $("#quantityInput").val();     
                newItem.item = $("#itemSelect").val();
 

                $.ajax({
                        url: "/orderItem/save",
                        type: "POST",
                        data:  newItem,
                        cache: false,
                        success: function(html) {
                            orderItemTable.ajax.reload();
                        }
                    });
            });
       

        </script>
</content> 