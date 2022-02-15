

import UIKit
import CoreData


let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    var personList = [Person]()     // Entity temsil eden sınıftan oluşan boş liste.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //saveData()
        //readDatas()
        //updateData()
        readDatas()
        //deleteData()
       
    
    }

    
    // Create
    func saveData(){
        let person = Person(context: context)
        
        person.person_age = 28
        person.person_name = "Eylül"
        
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
    
    
    // Update
    func updateData(){
        let person = personList[0]
        person.person_age = 28
        person.person_name = "Edit Ugur"
        appDelegate.saveContext()
        
    }
    
    
    
    // Delete
    func deleteData(){
        let person = personList[1]
        self.context.delete(person)
        appDelegate.saveContext()
    }
    
    
    
    // Read & Sorting
    func readyAndSort() {
        let fetchRequest:NSFetchRequest<Person> = Person.fetchRequest()
        let sort = NSSortDescriptor(key: #keyPath(Person.person_age), ascending : true)
        
        fetchRequest.sortDescriptors = [sort]
        
        do {
            
            personList = try context.fetch(fetchRequest)
            
        } catch {
            print("err!")
        }
        
    }
    

}

