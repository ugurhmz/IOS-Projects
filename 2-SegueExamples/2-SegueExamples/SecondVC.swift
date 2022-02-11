
import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func clickPassto3(_ sender: Any) {
        
        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "thirdpageId") as! ThirdVC
        
        navigationController?.pushViewController(destinationVC, animated: true)
    }
}
