
import UIKit

class DetailsVC: UIViewController {

    
    var selectedRow : String?
    
    @IBOutlet weak var rowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rowLabel.text = selectedRow!
    }
    


}
