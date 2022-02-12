//
//  Customer.swift
//  4-DataTransferPresentModally-onlycode
//
//  Created by ugur-pc on 12.02.2022.
//

import Foundation


class Customer {
    
    var id : Int?
    var name : String?
    var age : Int?
    
    init() {
    }
    
    init(id:Int, name:String, age:Int) {
        self.id = id
        self.name = name
        self.age = age
    }
    
}
