//
//  AlertManager.swift
//  BurgerBurner
//
//  Created by  on 2023-04-01.
//

import Foundation
import UIKit

class AlertManager {
    private static func showBasicAlert(on vc : UIViewController, with titile: String, message: String?) {
        
        DispatchQueue.main.async {
            let alert = UIAlertController(title: titile, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}

// Validation Alerts for sign up
extension AlertManager {
    public static func showInvalidEmailAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Email", message:  "Please enter a valid email.")
    }
    
    public static func showInvalidPasswordAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Password", message:  "Please enter a valid password.")
    }
    
    public static func showInvalidUsernameAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Invalid Username", message:  "Please enter a valid username.")
    }
}

// Regi Errors
extension AlertManager {
    public static func showRegistrationErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Registration Error", message:  nil)
    }
    
    public static func showRegistrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
    
}

// log in errors
extension AlertManager {
    public static func showSignInErrorAlert(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Error Signing In", message:  nil)
    }
    
    public static func showSignInErrorAlert(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Signing In", message: "\(error.localizedDescription)")
    }
}

// Forgot password error
extension AlertManager {
    public static func showPasswordResetSent(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Password Rest Sent", message:  nil)
    }
    
    public static func showErrorSendingPasswordReset(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
}

// User error
extension AlertManager {
    public static func showUknownFetchingUserError(on vc: UIViewController) {
        self.showBasicAlert(on: vc, with: "Unknown Error Fetching User", message:  nil)
    }
    
    public static func showFetchingUserError(on vc: UIViewController, with error: Error) {
        self.showBasicAlert(on: vc, with: "Error Fetching User", message: "\(error.localizedDescription)")
    }
}
