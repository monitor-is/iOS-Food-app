import Alamofire

@objc protocol LoginListener {
    func onSuccess()
    func onError()
}

class LoginService {
    
    weak var listener : LoginListener? = nil
    
    func loginUser(email: String, password: String) {
        let parameters = [
            "email" : email,
            "password" : password
        ]
        Alamofire.request(
            Const.LOGIN_URL,
            method: .post,
            parameters: parameters,
            encoding: JSONEncoding.default
            ).responseString { response in
            print(response.result.value ?? "test")
            switch response.result {
                case .success:
                    var token = response.result.value!
                    token = token.substring(from: 1, to: token.count - 1)
                    AuthService.saveToken(response.result.value!)
                    self.listener?.onSuccess()
                case .failure(let error):
                    print(error)
                    self.listener?.onError()
            }
        }
    }
}
