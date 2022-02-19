

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref:DatabaseReference?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        ref = Database.database().reference()
        
        
        // child -> Tablo name
        
        ref?.child("Test").setValue("hello")
    }


}

