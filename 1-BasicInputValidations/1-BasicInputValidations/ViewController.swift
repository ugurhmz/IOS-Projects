

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number1: UITextField!
  
    @IBOutlet weak var topLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.text = ""
    }


    @IBAction func changeBtn(_ sender: Any) {
        
        guard let text = number1.text, !number1.text!.isEmpty, !number2.text!.isEmpty else {
                             
                topLabel.text =  "Boş bırakalamaz!"
                topLabel.font = UIFont(name:"Helvetica",size:32)
                topLabel.textColor = .red
                return
                
            }
        
        if let num1 = Int(number1.text!) {
            if let num2 = Int(number2.text!) {
                topLabel.textColor = .black
                topLabel.text = "Result : \(num1 + num2)"
            }else {
                typeErr()
            }
            
            
            
        } else {
            typeErr()
        }
  
        
        func typeErr(){
            topLabel.text = "Type Hatası!"
            topLabel.font = UIFont(name:"Helvetica",size:25)
            topLabel.textColor = .orange
        }
    }
}

