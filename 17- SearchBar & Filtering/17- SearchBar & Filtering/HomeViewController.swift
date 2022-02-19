
import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var dummyDatas  = [String]()
    var afterSearchDatas = [String]()
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dummyDatas  = ["Ahmet","Selin","MeHMEt","eyLÜl","BahaR","Kibar","Deniz"]
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
    }


}




// TableView
extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isSearching {   // isSearching
            return self.afterSearchDatas.count
            
        } else { return dummyDatas.count }  // !isSearching
        
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        
        
        if self.isSearching { // isSearching
             cell.textLabel?.text = afterSearchDatas[indexPath.row]
        } else {                // !isSearching
            cell.textLabel?.text = dummyDatas[indexPath.row]
        }
        
        return cell
    }
    
    
}



// SearchBar
extension HomeViewController : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            self.isSearching = false
        } else {
            self.isSearching = true
            
            afterSearchDatas = dummyDatas.filter({ $0.lowercased().contains(searchText.lowercased())  })
        }
        
        tableView.reloadData()
    }
    
}
