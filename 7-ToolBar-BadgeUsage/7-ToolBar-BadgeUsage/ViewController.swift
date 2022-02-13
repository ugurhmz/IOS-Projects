

import UIKit

class ViewController: UIViewController {

    var profilCounter = 0
    var workCounter = 0
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
 
    // profil tab -> 0
    @IBAction func profilBtn(_ sender: Any) {
        if let tabItems = tabBarController?.tabBar.items {
            
            profilCounter += 1
            tabItems[0].badgeColor = UIColor.purple
            tabItems[0].badgeValue = "\(profilCounter)"
            
        }
    
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profilToWork" {
            
            let destinationVC = segue.destination as! WorkViewController
            
            destinationVC.myMessage = String(self.workCounter)
        }
    }
    
    
    
    // work tab -> 1
    @IBAction func workBtn(_ sender: Any) {
        
        if let tabItems = tabBarController?.tabBar.items {
            
            workCounter += 1
            tabItems[1].badgeColor = UIColor.blue
            tabItems[1].badgeValue = "\(workCounter)"
        }
        
        
        
        
        
    }
    
}

