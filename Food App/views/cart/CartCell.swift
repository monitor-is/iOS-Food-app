import UIKit

class CartCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var quantityTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func showProduct(product: Product) {
        nameLabel.text = product.name
        costLabel.text = "\(product.cost) ₽"
    }

    @IBAction func lessButtonOnClick(_ sender: Any) {
        
    }
    @IBAction func moreButtonOnClick(_ sender: Any) {
        
    }

}
