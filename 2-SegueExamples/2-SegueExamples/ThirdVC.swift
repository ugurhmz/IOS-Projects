

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func clickPassto1(_ sender: Any) {
        // En baştaki sayfaya döner
        navigationController?.popToRootViewController(animated: true)
    
    }
    
    @IBAction func clickPassto2(_ sender: Any) {
        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "secondpageId") as! SecondVC
        
    
        navigationController?.pushViewController(destinationVC, animated: true)
    }
    
}
