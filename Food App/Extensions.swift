import UIKit

extension UIViewController {
    func showAlert(title: String, message: String, button: String = "OK") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: button, style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func showNetworkIndicator(enabled: Bool) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = enabled
    }
}

extension String {
    func substring(from: Int, to: Int) -> String {
        let start = index(startIndex, offsetBy: from)
        let end = index(start, offsetBy: to - from)
        return String(self[start ..< end])
    }
}

extension UIView {
    func setSubviewShadow(subview: UIView) {
        subview.layer.shouldRasterize = true
        subview.layer.rasterizationScale = UIScreen.main.scale
        subview.layer.shadowColor = UIColor.black.cgColor
        subview.layer.shadowOpacity = 0.06
        subview.layer.shadowOffset = CGSize(width: 0, height: 8)
        subview.layer.shadowRadius = 5
        subview.layer.masksToBounds = false
    }
}
