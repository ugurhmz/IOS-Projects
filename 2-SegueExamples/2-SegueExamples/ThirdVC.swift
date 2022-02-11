

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func clickPassto1(_ sender: Any) {
//        // En baştaki sayfaya döner
//        navigationController?.popToRootViewController(animated: true)
    
    }
    
    @IBAction func clickPassto2(_ sender: Any) {
//        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "secondpageId") as! SecondVC
//
//
//        navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gofrom3to1" {
            print("3 -> 1")
        }
        
        if segue.identifier == "gofrom3to2" {
            print("3  ->  2")
        }
    }
    
}
