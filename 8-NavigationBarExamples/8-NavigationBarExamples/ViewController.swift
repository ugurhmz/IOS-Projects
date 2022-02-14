

import UIKit

class ViewController: UIViewController {
    var count = 0
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func addPerson(_ sender: Any) {
        print("person ekleme tıklandı")
    }
    
    
    
    @IBAction func heartBtn(_ sender: Any) {
        print("heart tıklandı")
        self.count = 0
        self.navigationItem.title = "\(count)"
        
    }
    
    
    @IBAction func detailBtn(_ sender: Any) {
    
        self.count += 1
        self.navigationItem.title = "\(self.count)"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addToPage" {
            print("add butonuna tıklandı.")
            self.navigationItem.title = "Bak değişti."
        }
    }
    
    
    
}

