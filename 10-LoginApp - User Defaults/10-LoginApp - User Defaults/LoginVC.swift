

import UIKit

class LoginVC: UIViewController {

    
    @IBOutlet weak var failedMsgLabel: UILabel!
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let db = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        failedMsgLabel.text = ""
        
        
        // ilk kez açıldığında, bu veriler daha önce kayıt edildimi
        let username = db.string(forKey:"dbusername") ?? "notfound"
        let password = db.string(forKey:"dbpassword") ?? "notfound"
        
        
        
        // daha önce kayıt varsa ->  diğer sayfaya Geçiş yap.
        if username != "notfound" && password != "notfound" {
            performSegue(withIdentifier: "loginToWelcome", sender: nil)
        }
        
        
    }

    
    // Login btn
    @IBAction func loginBtn(_ sender: Any) {
        
        if let username = usernameField.text, let password = passwordField.text {   // Önce texten verileri al.
            
            if username == "ugur" && password == "123456" {
                db.set(username, forKey: "dbusername")
                db.set(password, forKey: "dbpassword")
                
                performSegue(withIdentifier: "loginToWelcome", sender: nil) // Yukardaki şart sağlanıyor ise geçiş yap.
            } else{
                failedMsgLabel.text = "Login Failed!"
            }
            
            
            
        }
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    
    
    // When passing welcome page
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    

}

