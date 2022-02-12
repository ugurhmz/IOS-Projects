
import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var labelB: UILabel!
    var mesajB : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelB.text = mesajB
    }
    



}
