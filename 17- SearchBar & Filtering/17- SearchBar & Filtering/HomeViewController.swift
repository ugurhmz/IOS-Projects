
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





extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        
        cell.textLabel?.text = dummyDatas[indexPath.row]
        
        return cell
    }
    
    
}



extension HomeViewController : UISearchBarDelegate {
    
}
