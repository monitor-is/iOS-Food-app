import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var rectView: UIView!
    
    @IBAction func addToCartButton(_ sender: Any) {
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setSubviewShadow(subview: rectView)
        backgroundColor = UIColor.clear
    }
    
    func showProduct(product: Product) {
        nameLabel.text = product.name
        descLabel.text = product.desc
        productImage.af_setImage(withURL: URL(string: (product.image))!, imageTransition: .crossDissolve(0.3))
    }
}
