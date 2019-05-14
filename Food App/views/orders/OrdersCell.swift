import UIKit

class OrdersCell: UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var productsLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var rectView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setSubviewShadow(subview: rectView)
        backgroundColor = UIColor.clear
    }
    
    func showOrder(order: Order) {
        indexLabel.text = order.index
        statusLabel.text = order.status
        productsLabel.text = "TO DO products list"
        timeLabel.text = order.preferredTime
    }
}
