protocol LoginView {
    func showNetworkError()
    func showProgress()
    func hideProgress()
    func showEmailError()
    func showPasswordError()
    func onLoginSuccess()
}

