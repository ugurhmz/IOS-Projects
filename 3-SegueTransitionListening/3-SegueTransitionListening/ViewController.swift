
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func clickGoto2(_ sender: Any) {
        
        let myPerson = Person(id: 67, name : "Ugur")
        
        
        // veri burdan  --->   prepare gönderiliyor
        performSegue(withIdentifier: "gofrom1to2", sender : myPerson)
    }
    
    
    
    // performSeguden geliyor...
    override func prepare(for segue: UIStoryboardSegue, sender : Any?) {
        
        let comingData = sender as? Person
        
        print("Gelen data -> \(comingData!.personId!)     |    \(comingData!.name!)")
        print("Ayrıca 1 -> 2 ")
    }
    
    
}

