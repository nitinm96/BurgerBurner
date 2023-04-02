//
//  LoginViewController.swift
//  BurgerBurner
//
//  Created by  on 2023-04-01.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var NewUser: UILabel!
    
    @IBOutlet weak var email: UITextField!

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var forgotPassword: UILabel!
    
    @IBAction func unwindToSignInViewController(segue: UIStoryboardSegue) {
        //xxx
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // New User gesture controller setup
        let gR1 = UITapGestureRecognizer(target: self, action: #selector(self.handleNewUserTap))
        NewUser.addGestureRecognizer(gR1)
        NewUser.isUserInteractionEnabled = true
        
        // Forgot Password gesture controller setup
        let gR2 = UITapGestureRecognizer(target: self, action: #selector(self.handleForgotPasswordTap))
        forgotPassword.addGestureRecognizer(gR2)
        forgotPassword.isUserInteractionEnabled = true
    }
    
    @objc func handleNewUserTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "SignUp") as! SignUpViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    @objc func handleForgotPasswordTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "ForgotPassword") as! ForgotPasswordViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
   
    @IBAction func SignIn(_ sender: Any) {
        let loginRequest = LoginUserRequest(email: self.email.text ?? "", password: self.password.text ?? "")
            
        AuthService.shared.signIn(with: loginRequest) { error in
            if let error = error {
                AlertManager.showSignInErrorAlert(on: self, with: error)
                return
            } else {
            let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nvc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(nvc, animated: true, completion: nil)
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
