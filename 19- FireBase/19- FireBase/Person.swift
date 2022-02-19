

import Foundation



class Person {
    var name:String?
    var email:String?
    var age:Int?
    
    
    init(){
        
    }
    
    init (name:String, email :String, age: Int) {
        self.name = name
        self.email = email
        self.age = age
    }
    
}
