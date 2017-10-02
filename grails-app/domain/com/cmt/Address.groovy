package com.cmt

class Address {

    String street
    String city
    String state
    String zip
    String phone

    static constraints = {      
        street blank: false, nullable: false
        city blank: false, nullable: false
        state blank: false, nullable: false
        zip blank: false, nullable: false
        phone blank: false, nullable: false
    }
      
}
