
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = UserDefaults.standard
        
        // SAVE
        db.set("Ugur", forKey: "name")
        db.set(27, forKey: "age")
        db.set(70.45, forKey: "weight")
        db.set(true, forKey: "live")
        
        
        let namesArr = ["Ayşe","Fatma","Hasan","Veli"]
        db.set(namesArr, forKey:"namesArr")
        
        
        let trCities:[String:String] = ["34":"İstanbul", "67":"Zonguldak", "52":"Ordu"]
        db.set(trCities, forKey: "trCities")
        
        
        // READ
        let name = db.string(forKey: "name") ?? "not found"
        let age = db.integer(forKey: "age")
        let weight = db.double(forKey: "weight")
        let isLive = db.bool(forKey: "live")
        
        
        
        print(name, age, weight, isLive)
        
        
        let readNamesArr = db.array(forKey: "namesArr") as? [String] ?? [String]()
        print(readNamesArr[0])
        
        
        let readDict = db.dictionary(forKey: "trCities") as? [String:String] ?? [String:String]()
        print(readDict["67"]!)
        
        
    }


}

