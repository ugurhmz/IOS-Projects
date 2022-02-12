

import UIKit

class BViewController: UIViewController {

    
    @IBOutlet weak var labelB: UILabel!
    
    // yer tutucu gelen mesaj için
    var mesajB : String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let mesajB = mesajB {
            labelB.text = mesajB
        }
        
        
    }
    

    

}
