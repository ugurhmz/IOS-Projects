

import UIKit

class CViewController: UIViewController {
    @IBOutlet weak var labelC: UILabel!
    
    // yer tutucu gelecek mesaj için
    var myMessageC : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myMessageC = myMessageC {
            labelC.text = myMessageC
        }

    }
    


}
