import UIKit

class LoginViewController: UIViewController, LoginView {
    
    private let presenter = LoginPresenter()
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setView(view: self)
        navigationItem.hidesBackButton = true
    }
    
    func showNetworkError() {
        showAlert(title: "Ошибка сети", message: "Произошла ошибка сети, попробуйте ещё раз")
    }
    
    func showProgress() {
        showNetworkIndicator(enabled: true)
    }
    
    func hideProgress() {
        showNetworkIndicator(enabled: false)
    }
    
    func showEmailError() {
        showAlert(title: "Ошибка в e-mail", message: "Некорректный e-mail")
    }
    
    func showPasswordError() {
        showAlert(title: "Неправильный пароль", message: "Пароль слишком короткий")
    }
    
    func onLoginSuccess() {
        performSegue(withIdentifier: "onLogin", sender: nil)
    }

    @IBAction func onLoginClicked(_ sender: Any) {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        presenter.loginUser(email: email, password: password)
    }
    
}
