import UIKit

class CartViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cart: Order = Order()

    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tabBarController?.navigationItem.title = "Корзина"
    }
    
    private func initTableView() {
        edgesForExtendedLayout = []
        tableView.estimatedRowHeight = 168.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundColor = UIColor(red: 237.0/255.0, green: 234.0/255.0, blue: 235.0/255.0, alpha: 1)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (cart.products?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartCell
        cell.showProduct(product: (cart.products?[indexPath.row])!)
        return cell
    }
    
}
