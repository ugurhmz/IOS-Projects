

import UIKit

class LoginVC: UIViewController {

    
    
    @IBOutlet weak var usernameField: UITextField!
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    // Login btn
    @IBAction func loginBtn(_ sender: Any) {
    }
    
    
    // When passing welcome page
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    

}

