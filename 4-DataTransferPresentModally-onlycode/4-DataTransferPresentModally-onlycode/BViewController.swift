
import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    var myMessage : String?
    var customer = Customer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Gelen datayı ekrana bas.
        dataLabel.text = myMessage!
        
        print("Customer  : \(customer.id!), \(customer.name!), \(customer.age!)")
        
        
    }
    

    

}
