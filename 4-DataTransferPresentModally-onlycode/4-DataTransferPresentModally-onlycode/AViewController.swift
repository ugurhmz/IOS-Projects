
import UIKit

class AViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func clickSendData(_ sender: Any) {
        
        // 1- Hangi storyboard tanımla
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        
        // 2- Gidilecek VC
        let gidilecekVC = storyboard.instantiateViewController(withIdentifier: "pageB") as! BViewController
        gidilecekVC.modalPresentationStyle = .fullScreen
        
        
        // Nesne yollamak istersek
        let gonderilecekCustomer = Customer(id:33, name: "Hasan", age:45)
        
        // 3- Gönderilecek String mesaj
        gidilecekVC.myMessage = inputField.text!
        gidilecekVC.customer = gonderilecekCustomer
        
        /* EĞERKİ presentModally ile geçeceksek bu şekilde.
        self.present(gidilecekVC, animated: true, completion: nil)*/
        
        // PUSH ile geçme.
        self.navigationController?.pushViewController(gidilecekVC, animated: true)
        
    } 
    
}

