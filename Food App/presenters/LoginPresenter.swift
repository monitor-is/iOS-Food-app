class LoginPresenter : LoginListener {
    private let loginService : LoginService
    private var loginView : LoginView?
    
    init() {
        loginService = LoginService()
        loginService.listener = self
    }
    
    func setView(view: LoginView) {
        loginView = view
    }
    
    func removeView() {
        loginView = nil
    }
    
    func loginUser(email: String, password: String) {
        loginService.loginUser(email: email, password: password)
    }
    
    /** Login listener methods **/
    
    func onSuccess() {
        loginView?.onLoginSuccess()
    }
    
    func onError() {
        loginView?.showNetworkError()
    }
    
}
