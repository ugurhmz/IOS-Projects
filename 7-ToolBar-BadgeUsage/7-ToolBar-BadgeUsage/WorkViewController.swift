
import UIKit

class WorkViewController: UIViewController {

    @IBOutlet weak var workLabel: UILabel!
    var myMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let myMessage = myMessage {
            workLabel.text = myMessage
        }
    }
    


}
