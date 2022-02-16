

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    

    
    @IBOutlet weak var myField: UITextField!
    @IBOutlet weak var mypickerview: UIPickerView!
    
    
    var pickerView:UIPickerView?
    var mycities = [String]()
    var selectedCity :  String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mycities = ["London","İzmir","Boston","New York","France"]
        
        pickerView = UIPickerView()
        pickerView?.dataSource = self
        pickerView?.delegate = self
        
        myField.inputView = pickerView
        
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.tintColor = UIColor.blue
        toolBar.sizeToFit()
        
        let okBtn = UIBarButtonItem(title : "OK", style: .plain, target: self, action: #selector(self.okClicked))
        let spaceBetweenBtn = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelBtn = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelClicked))
        
        
        toolBar.setItems([cancelBtn, spaceBetweenBtn, okBtn], animated: true)
        myField.inputAccessoryView = toolBar
        
    }
    
    // OK
    @objc func okClicked(){
        myField.text = self.selectedCity
        print(selectedCity)
        view.endEditing(true)
    }
    
    
    // Cancel
    @objc func cancelClicked() {
        myField.text = ""
        view.endEditing(true)
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
        self.selectedCity = mycities[row]
    }
    


}

