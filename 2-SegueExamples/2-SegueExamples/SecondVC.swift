
import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func clickPassto3(_ sender: Any) {
//        
//        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "thirdpageId") as! ThirdVC
//        
//        navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    
    override func prepare(for segue : UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "gofrom2to3" {
            print("2 ->  3")
        }
    }
}
