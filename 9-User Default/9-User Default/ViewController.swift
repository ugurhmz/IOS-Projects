
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
        
        
        
        
    }


}

