package com.cmt

class SetupController {

    def dataService 

    def index() { }


    def loadData(){
        dataService.loadData();
        render 'ok';
    }


    def test(){


    }

}
