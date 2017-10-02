package com.cmt

class Customer {


    //The customer has a name, address, city, state, zip, phone number, and date of birth.
    String name
    Address address
    Date birthDate

    Date dateCreated 
    Date lastUpdated

    static constraints = {
        name blank: false, nullable: false
        address blank: false, nullable: false
        birthDate blank: false, nullable: false
    }
}
