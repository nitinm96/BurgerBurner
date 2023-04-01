//
//  SignUpViewController.swift
//  BurgerBurner
//
//  Created by  on 2023-04-01.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
        
    
    @IBAction func SignUp(_ sender: Any) {
        let registerUserRequest = RegisterUserRequest(email: self.emailField.text ?? "", password: self.passwordField.text ?? "", username: self.usernameField.text ?? "")
//        if !Validator.isValidUsername(for: registerUserRequest.username) {
//            AlertManager.showInvalidUsernameAlert(on: self)
//            return
//        }
//        if !Validator.isValidEmail(for: registerUserRequest.email) {
//            AlertManager.showInvalidEmailAlert(on: self)
//            return
//        }
//        if !Validator.isPasswordValid(for: registerUserRequest.password) {
//            AlertManager.showInvalidPasswordAlert(on: self)
//            return
//        }
        AuthService.shared.registerUser(with: registerUserRequest) { [weak self] wasRegistered, error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showRegistrationErrorAlert(on: self, with: error)
                return
            }
            if wasRegistered {
                    let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let nvc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                    self.present(nvc, animated: true, completion: nil)
                } else {
                AlertManager.showRegistrationErrorAlert(on: self)
                return
            }

        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
