
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var fruitCollections: UICollectionView!
    
    var fruits:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruits = ["Cherry","Pear","Apple","Grape","Sour Cherry","Fig","Blueberries","Plum"]
        
        fruitCollections.delegate = self
        fruitCollections.dataSource = self
        
    }


}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! CollectionViewCell
        
        // Cell'in -> içindeki labelin -> Texti.
        cell.cellLabel.text = "\(self.fruits[indexPath.row])"
        
        return cell
    }
    
    
}
