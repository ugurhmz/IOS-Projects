
import UIKit

class AViewController: UIViewController {

    
    @IBOutlet weak var inputField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // BURDA BUTONLAR ACTION YOK, GEÇİŞ ZATEN Storyboard'dan
    // Sadece geçiş dinle  +   Veri gönder
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let gidecekMesaj = inputField.text!
        
        
        
        if segue.identifier == "aToB" {
            print("a  ->   b")
            
            let gidilecekVC =  segue.destination as! BViewController
            gidilecekVC.mesajB =  gidecekMesaj
            
        }
        
        
        
        if segue.identifier == "aToC" {
            print("a  -> c")
            
            let targetVC =  segue.destination as! CViewController
            targetVC.myMessageC = gidecekMesaj
        }
        
        
    }


}

