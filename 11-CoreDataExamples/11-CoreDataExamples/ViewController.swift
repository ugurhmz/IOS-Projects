

import UIKit
import CoreData


let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    var personList = [Person]()     // Entity temsil eden sınıftan oluşan boş liste.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        saveData()
        readDatas()
    }

    
    // Save
    func saveData(){
        let person = Person(context: context)
        
        person.person_age = 27
        person.person_name = "Ugur"
        appDelegate.saveContext()
        
    }
    
    // Read
    func readDatas(){
        
        do {
            personList = try context.fetch(Person.fetchRequest())
            
        } catch {
            print("Fetch err!")
        }
        
        
        for item in personList {
            print("Name : \(item.person_name!) -> Age : \(item.person_age)")
        }
    
    }
    

}

