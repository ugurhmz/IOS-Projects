
import UIKit
// SEGUE PUSH   *** Main.storyboard üzerinde first page için -> Editor -> embed in -> Navigation Controller olması gerek.

// 1- Hangi storyboard onu söyle
let storyBoard = UIStoryboard(name: "Main", bundle: nil)


class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    
    @IBAction func clickPassto2(_ sender: Any) {
        
        
        // 2- gidilecekyer storyboardId +  gidilecekyer VC
        let gidilecekYerVC = storyBoard.instantiateViewController(withIdentifier: "secondpageId") as! SecondVC
        
        
        
        //3- pushViewController ile git
        navigationController?.pushViewController(gidilecekYerVC, animated: true)
        
    }
  
}







// * NOT -> İstenilen sayfaya presentModally olarak gitmek için ise
// self.present(gidilecekYerVC, animaed: true, completion: nil)

