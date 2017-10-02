package com.cmt

class OrderItem {

    Item item
    Integer quantity 

    static belongsTo = [customerOrder: CustomerOrder ]

    static constraints = {
    }
}
