

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    

    
    @IBOutlet weak var myField: UITextField!
    @IBOutlet weak var mypickerview: UIPickerView!
    
    
    var pickerView:UIPickerView?
    var mycities = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mycities = ["London","İzmir","Boston","New York","France"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        myField.inputView = pickerView
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    
    // Kaç satır olacak
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mycities.count
    }
    
    
    
    // çıkan datalar
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        pickerView.backgroundColor = UIColor.purple
        pickerView.setValue(UIColor.white, forKey: "textColor")
        
        return mycities[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myField.text = mycities[row]
    }
    


}

