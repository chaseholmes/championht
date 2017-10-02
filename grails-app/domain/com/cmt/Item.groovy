package com.cmt

class Item {


    //An item has a catalog number, description, and price.

    String catalogNumber
    String description    
    Float price
    ItemType type


    static constraints = {
        catalogNumber blank: false, nullable: false, unique: true 
        description blank: false, nullable: false
        price blank: false, nullable: false, min: 0.0f
        type blank: false, nullable: false
    }
}
