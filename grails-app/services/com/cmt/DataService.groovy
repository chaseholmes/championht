package com.cmt

import grails.transaction.Transactional

@Transactional
class DataService {

    def loadData() {

        def itemTypes = [];
        def customers = [];
        def stores = [];
        def items = [];
        def customerOrders = [];

        itemTypes << new ItemType( name : 'Food' ).save()
        itemTypes << new ItemType( name : 'Drug' ).save()

        customers << new Customer (
            name : 'Fred Flintstone',
            address : new Address(
                street : '123 Main',
                city : 'Sunny City',
                state : 'Az',
                zip : '85000',
                phone : '555-5555',
            ),
            birthDate : new Date(100, 0, 0)
        ).save()

        stores << new Store( 
            name : 'Quicktrip',
            address : new Address(
                street : '888 Side',
                city : 'Phoenix',
                state : 'Az',
                zip : '85000',
                phone : '555-5511',
            )
        ).save()

        stores[0].addToItemTypes(itemTypes[0]);

        items << new Item( 
            catalogNumber : '1111',
            description : 'Doritos',
            price : 4,
            type : itemTypes[0],
        ).save()

        items << new Item( 
            catalogNumber : '2222',
            description : 'Advil',
            price : 10,
            type : itemTypes[1],
        ).save()


        customerOrders << new CustomerOrder(
            customer : customers[0],
            store : stores[0]
        ).save()

        customerOrders[0].addToItems(
            new OrderItem(
                item : items[0],
                quantity : 1    
            )
        );

    }

}
