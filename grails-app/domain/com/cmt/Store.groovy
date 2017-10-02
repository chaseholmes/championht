package com.cmt

class Store {


// store has a name, address, city, state, zip, phone number, and type of items sold (sporting goods, grocery, etc). 
    String name
    Address address

    static hasMany = [itemTypes: ItemType]

    static constraints = {
        name blank: false, nullable: false
        address blank: false, nullable: false
    }

   
}
