package com.cmt

class ItemType {

    String name

    static constraints = {
        name blank: false, nullable: false, unique:true
    }
}
