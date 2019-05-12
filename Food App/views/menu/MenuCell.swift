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
        setViewShadow()
    }

    private func setViewShadow() {
        rectView.layer.shouldRasterize = true
        rectView.layer.rasterizationScale = UIScreen.main.scale
        rectView.layer.shadowColor = UIColor.black.cgColor
        rectView.layer.shadowOpacity = 0.06
        rectView.layer.shadowOffset = CGSize(width: 0, height: 8)
        rectView.layer.shadowRadius = 5
        rectView.layer.masksToBounds = false
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
