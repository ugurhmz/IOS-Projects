
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var hoursTextField: UITextField!
    
    var datePicker:UIDatePicker?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        
        dateTextField.inputView = datePicker
        
        datePicker?.addTarget(self, action: #selector(self.showDate(datePicker:)), for: .valueChanged)
        let gestureRecog = UITapGestureRecognizer(target: self, action: #selector(self.gestureMetod))
        
    }
    
    
    
    // showDate
    @objc func showDate(datePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        let getDate = dateFormatter.string(from: datePicker.date)
        dateTextField.text = getDate
        
        //view.endEditing(true)
        
    }

    
    // gestureMetod
    @objc func gestureMetod() {
        view.endEditing(true)
    }

}

