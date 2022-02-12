

import UIKit

class CViewController: UIViewController {

    @IBOutlet weak var labelC: UILabel!
    var mesajC : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelC.text = mesajC
    }
    


}
