
import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var hoursTextField: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //________________________DATE PICKER________________________
            datePicker = UIDatePicker()
            datePicker?.datePickerMode = .date
            
            // Klasik görünüme çevirme
            if #available(iOS 13.4, *) {
                datePicker?.preferredDatePickerStyle = .wheels
            }
            dateTextField.inputView = datePicker
            datePicker?.addTarget(self, action: #selector(self.showDate(datePicker:)), for: .valueChanged)
        
        //________________________ /DATE PICKER________________________
        
        
        
        
        
        
        //________________________ TIME PICKER _________________________
        
            timePicker = UIDatePicker()
            timePicker?.datePickerMode = .time
            hoursTextField.inputView = timePicker
            
            if #available(iOS 13.4, *) {
                timePicker?.preferredDatePickerStyle = .wheels
            }
        
            timePicker?.addTarget(self, action: #selector(self.showTime(timePicker:)),  for: .valueChanged)
            
            
        //________________________/TIME PICKER _________________________
        
        
        
        // BOŞA TIKLAYINCA KAYBOLSUN.
        let gestureRecog = UITapGestureRecognizer(target: self, action: #selector(self.gestureMetod))
        view.addGestureRecognizer(gestureRecog)
    }
    
    
    
    // showDate   -> Date
    @objc func showDate(datePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let getDate = dateFormatter.string(from: datePicker.date)
        dateTextField.text = getDate
        
        //view.endEditing(true)
        
    }

    
    // gestureMetod    -> Date
    @objc func gestureMetod() {
        view.endEditing(true)
    }
    
    
    // showTimePicker   -> Time
    @objc func showTime(timePicker:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        let getTime = dateFormatter.string(from: timePicker.date)
        hoursTextField.text = getTime
    }
    
    
    
    
    

}

