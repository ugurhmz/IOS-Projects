

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref:DatabaseReference?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        ref = Database.database().reference()
        
        
        // child -> Tablo name
        //ref?.child("Test").setValue("hello")
        //addPerson()
        //deletePerson()
        updatePerson()
    }

    
    // CREATE
    func addPerson(){
        
        // Person OBJ
       let person1 = Person(name: "Hasan", email: "hasan@gmail.com", age: 25)
       let person2 = Person(name: "Selin", email: "selin@gmail.com", age: 28)
       let person3 = Person(name: "Elif", email: "elif@gmail.com", age:32)
    
        
       // DICT
        let p1Dict:[String:Any] = ["name":person1.name!, "email":person1.email!, "age":person1.age!]
        
        let p2Dict:[String:Any] = ["name":person2.name!, "email":person2.email!, "age":person2.age!]
        
        let p3Dict:[String:Any] = ["name":person3.name!, "email":person3.email!, "age":person3.age!]
        
        
        // REF
        let tableRef = ref?.child("Person_T").childByAutoId()
        
        //tableRef?.setValue(p1Dict)
        //tableRef?.setValue(p2Dict)
        tableRef?.setValue(p3Dict)
        
    }
    
    
    
    // UPDATE
    func updatePerson(){
        ref?.child("Person_T").child("-MwJMR1kMgd2BSfpFYgL").updateChildValues(["name":"Yeni Selin","email":"yeniemail@gmail.com","age":33])
    }
    
    
    
    
    // DELETE
    func deletePerson(){
        ref?.child("Person_T").child("-MwJMSeS37THU8HBMyou").removeValue()
        
    }
    
  
    
}

