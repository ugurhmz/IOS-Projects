

import UIKit

class LoginVC: UIViewController {

    
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let db = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // ilk kez açıldığında, bu veriler daha önce kayıt edildimi
        let username = db.string(forKey:"dbusername") ?? "notfound"
        let password = db.string(forKey:"dbpassword") ?? "notfound"
        
        
        
        // her ikiside notfound !=  -> Geçiş yap.
        if username != "notfound" && password != "notfound" {
            performSegue(withIdentifier: "loginToWelcome", sender: nil)
        }
        
        
    }

    
    // Login btn
    @IBAction func loginBtn(_ sender: Any) {
        
        if let username = usernameField.text, let password = passwordField.text {
            
            if username == "admin" && password == "123456" {
                db.set(username, forKey: "dbusername")
                db.set(password, forKey: "dbpassword")
                
                performSegue(withIdentifier: "loginToWelcome", sender: nil)
            } else{
                print("Login failed!")
            }
            
            
            
        }
        
        
    }
    
    
    // When passing welcome page
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    

}

