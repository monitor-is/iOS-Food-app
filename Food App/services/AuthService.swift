import UIKit

class AuthService: NSObject {
    static let key = "token"
    var token: String?
    
    override init() {
        if let savedToken = UserDefaults.standard.string(forKey: AuthService.key) {
            token = savedToken
        }
    }
    
    static var instance: AuthService = AuthService()
    
    static func isLoggedIn() -> Bool {
        return instance.token != nil
    }
    
    static func saveToken(_ token: String) {
        instance.token = token
        UserDefaults.standard.set(token, forKey:key)
    }
    
    static func getToken() -> String {
        return instance.token!
    }
    
    static func logout() {
        instance.token = nil
        UserDefaults.standard.removeObject(forKey: key)
    }
    
    
}
