

import UIKit

class ViewController: UIViewController{
   
    
    @IBOutlet weak var tableView: UITableView!
    
    var myDatas = [String]()
    var selectedThisRow : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        myDatas = ["New York", "Boston","Ireland","İzmir","Zonguldak","France","Amsterdam"]
    }

    
   
    
    // detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rowToDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedRow = self.selectedThisRow
            
        }
        
    }
    
    
}




extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    // numberOfSections,  datas Bittikten sonra kaç kez tekrarlansın
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    // numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDatas.count
    }
    
    
    
    // cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)  // önce Hangi cell'e yazılacak
        
        cell.textLabel?.text = "\(indexPath.row + 1 ) - \(myDatas[indexPath.row])"
        cell.backgroundColor = UIColor.white
        cell.textLabel?.font = UIFont(name: "Helvetica", size: 30)
        cell.layer.borderWidth = 0.2
        cell.textLabel?.textColor = UIColor.black // <- Changed color here
        cell.textLabel?.textAlignment = .center
       
        
        return cell
    }
    
    
    // didSelectRowAt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedThisRow = myDatas[indexPath.row]
        performSegue(withIdentifier: "rowToDetailsVC", sender: nil)
    }

    
    // heightForRowAt
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    
    // cell swipe'tan sonraki Actions'lar
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
       
        
        // delete
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete", handler: {
            (contextualAction, view, boolValue) in
            
            self.myDatas.remove(at: indexPath.row)      // sil rowu
            self.tableView.reloadData()                // silindikten sonra -> refresh
        })
        
        
        
        
        // edit
        let editAction = UIContextualAction(style: .normal, title: "Edit", handler: {
            (contextualAction, view, boolValue) in
            
            self.selectedThisRow = self.myDatas[indexPath.row]
            self.performSegue(withIdentifier: "rowToDetailsVC", sender: nil)
            
            
        })
        
        
        
        return UISwipeActionsConfiguration(actions: [deleteAction,editAction])
    }
    
    
}

