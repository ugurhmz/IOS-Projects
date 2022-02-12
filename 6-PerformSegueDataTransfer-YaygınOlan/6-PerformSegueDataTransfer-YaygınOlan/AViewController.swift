

import UIKit

class AViewController: UIViewController {

    
    
    @IBOutlet weak var inputField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func btnSendB(_ sender: Any) {
        let getData = inputField.text!
        performSegue(withIdentifier: "aToB", sender: getData)   // Geçişi yapar.
    }
    
    @IBAction func btnSendC(_ sender: Any) {
        let getData = inputField.text!
        performSegue(withIdentifier:"aToC", sender: getData)    // Geçişi yapar.
    }
    
    
    // Geçişi dinler ve her geçişte tetiklenir bu func
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "aToB" {
            print("A -> B")
            
            if let data = sender as? String {   // datayı al.
                let gidilecekVC = segue.destination as! BViewController
                gidilecekVC.mesajB = data
            }
            
        }
        
        
        if segue.identifier == "aToC" {
            print("A -> C")
            if let data = sender as? String {
                let gidilecekVC  = segue.destination as! CViewController
                gidilecekVC.mesajC = data
            }
        }
    }
    
    
}

