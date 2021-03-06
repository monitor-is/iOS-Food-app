import UIKit
import AlamofireImage

class MenuViewController: UITableViewController {

    var products : [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        products = [Product(), Product(), Product(), Product(), Product()]
    }

    override func viewDidAppear(_ animated: Bool) {
        tabBarController?.navigationItem.title = "Меню"
    }

    private func initTableView() {
        edgesForExtendedLayout = []
        tableView.estimatedRowHeight = 200.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.backgroundColor = UIColor(red: 237.0/255.0, green: 234.0/255.0, blue: 235.0/255.0, alpha: 1)
        tableView.separatorColor = UIColor.clear
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (products?.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.showProduct(product: (products?[indexPath.row])!)
        
        return cell
    }

}
