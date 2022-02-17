
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var personObj = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var p1 = Person(id: 1, name: "Hasan", email: "hasan@gmail.com")
        var p2 = Person(id: 2, name: "Ayşe", email: "ayse@gmail.com")
        var p3 = Person(id: 3, name: "Eylül", email: "eylül@gmail.com")
        var p4 = Person(id: 4, name: "Samet", email: "samet@gmail.com")
        
        
        personObj.append(p1)
        personObj.append(p2)
        personObj.append(p3)
        personObj.append(p4)
        
        
        
    }
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  personObj.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = personObj[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "personsCell", for: indexPath) as! CustomCellVC
        
        cell.label.text = "\(person.name! ) - \(person.email!)"      // Custom Cell'in içinde bağlı olan, labelin text'ine ata.
        
        
        return cell
        
    }
    
    
}
