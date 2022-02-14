
import UIKit

class WelcomeVC: UIViewController {

    
    @IBOutlet weak var welcomeMsgLabel: UILabel!
    var count = 4
    var timer = Timer()
    let db = UserDefaults.standard
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        let username = db.string(forKey:"dbusername") ?? "notfound"
       
      
        welcomeMsgLabel.text = "Welcome \(username)"
        
    }
    

    
    
    
    // logout -> Remove username & password
    @IBAction func logoutBtn(_ sender: Any) {
        
        db.removeObject(forKey: "dbusername")
        db.removeObject(forKey: "dbpassword")
        
        
        timer = Timer.scheduledTimer(timeInterval: 1,
                                            target: self,
                                            selector: #selector(timerCount),
                                            userInfo: nil,
                                            repeats: true)
    }
    
    
    
    
   // timerCount()
   @objc func timerCount(){
       navigationController?.isNavigationBarHidden = true
       self.view.backgroundColor = .black
       self.welcomeMsgLabel.textColor = UIColor.white
       self.count -= 1
       welcomeMsgLabel.text = "\(self.count)"
     
       
      
         if self.count == 0 {
           timer.invalidate()
           exit(-1)
       }
      
    }
    
}
