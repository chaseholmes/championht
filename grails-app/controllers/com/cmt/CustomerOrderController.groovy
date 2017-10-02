package com.cmt

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional(readOnly = true)
class CustomerOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        JSON.use("deep") {
            respond CustomerOrder.list(params), model:[customerOrderCount: CustomerOrder.count()]
        }
    }


    def show(CustomerOrder customerOrder) {
        respond customerOrder
    }

    def create() {
        respond new CustomerOrder(params)
    }

    @Transactional
    def save(CustomerOrder customerOrder) {

        if (customerOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (customerOrder.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond customerOrder.errors, view:'create'
            return
        }

        customerOrder.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customerOrder.label', default: 'CustomerOrder'), customerOrder.id])
                redirect customerOrder
            }
            '*' { respond customerOrder, [status: CREATED] }
        }
    }

    def edit(CustomerOrder customerOrder) {
        respond customerOrder, model:[storeItems: getStoreItems(customerOrder.store.id)]
    }

    def getStoreItems(Long storeId){        
        if (storeId == null) {
            return []
        }

        def store = Store.get(storeId)
        def items = Item.createCriteria().list {
             "in" "type", store.itemTypes
        }
        return items
    }


    @Transactional
    def update(CustomerOrder customerOrder) {

        if (customerOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (customerOrder.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond customerOrder.errors, view:'edit'
            return
        }

        customerOrder.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'customerOrder.label', default: 'CustomerOrder'), customerOrder.id])
                redirect customerOrder
            }
            '*'{ respond customerOrder, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomerOrder customerOrder) {

        if (customerOrder == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        customerOrder.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'customerOrder.label', default: 'CustomerOrder'), customerOrder.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerOrder.label', default: 'CustomerOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }




    def newItem(){
        render(template: 'item' , bean: new OrderItem(params), var:'orderItem' )

    }

}
