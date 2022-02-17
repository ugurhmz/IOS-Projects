
import Foundation



class Person {
    
    var id:Int?
    var name:String?
    var email:String?
    
    
    
    init() {
        
    }
    
    init(id:Int, name:String, email:String) {
        self.id = id
        self.name = name
        self.email = email
    }
    
}
