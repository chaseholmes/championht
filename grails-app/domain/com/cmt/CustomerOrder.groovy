package com.cmt

class CustomerOrder {

    // An order has a date/time created, the store used, the customer the order is for, and the list of items purchased.
    Customer customer
    Store store
    Date dateCreated 
    Date lastUpdated

    static hasMany = [items: OrderItem]

    static constraints = {

        
    } 
}
