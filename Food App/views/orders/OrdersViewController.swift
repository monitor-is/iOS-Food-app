import UIKit

class OrdersViewController: UITableViewController {

    var ordersList: [Order]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ordersList = [Order(), Order(), Order()]
        initTableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tabBarController?.navigationItem.title = "Мои заказы"
    }
    
    private func initTableView() {
        edgesForExtendedLayout = []
        tableView.estimatedRowHeight = 168.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundColor = UIColor(red: 237.0/255.0, green: 234.0/255.0, blue: 235.0/255.0, alpha: 1)
        tableView.separatorColor = UIColor.clear
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (ordersList?.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell", for: indexPath) as! OrdersCell
        cell.showOrder(order: (ordersList?[indexPath.row])!)
        
        return cell
    }

}
