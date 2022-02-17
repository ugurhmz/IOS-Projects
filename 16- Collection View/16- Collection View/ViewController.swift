
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var fruitCollections: UICollectionView!
    
    var fruits:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let design: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let collectionWidth = self.fruitCollections.frame.size.width
        design.sectionInset = UIEdgeInsets(top:10, left:10, bottom:10, right:10)
        design.minimumInteritemSpacing = 5
        design.minimumLineSpacing = 5
        
        
        design.itemSize = CGSize(width: (collectionWidth-30) / 3,
                                 height: (collectionWidth-30) / 3)
        
        
        fruitCollections!.collectionViewLayout = design
        
        fruits = ["Cherry","Pear","Apple","Grape","Sour Cherry","Fig","Blueberries","Plum","Cherry","Pear","Apple","Grape","Sour Cherry","Fig","Blueberries","Plum"]
        
        fruitCollections.delegate = self
        fruitCollections.dataSource = self
        
    }


}



extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    // numberOfItemsInSection
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruits.count
    }
    
    
    
    
    // cellForItemAt
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! CollectionViewCell

        
        // Cell'in -> içindeki labelin -> Texti.
        cell.cellLabel.text = "\(self.fruits[indexPath.row])"
        
        
        cell.layer.borderColor = UIColor.purple.cgColor
        cell.layer.borderWidth = 3
 
        return cell
    }
    
    
    // didSelectItemAt
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected : \(fruits[indexPath.row]) ")
    }
    
    
    
}
