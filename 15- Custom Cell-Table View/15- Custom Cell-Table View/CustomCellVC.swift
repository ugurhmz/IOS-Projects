
import UIKit


protocol TableViewProtocol {
    func cellClickBtn(indexPath: IndexPath)
}




class CustomCellVC: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    var clickProtocol : TableViewProtocol?
    var indexPath:IndexPath?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    
    // CLICK BTN
    @IBAction func clickedBtn(_ sender: Any) {
        clickProtocol?.cellClickBtn(indexPath: indexPath!)
    }
    
}
