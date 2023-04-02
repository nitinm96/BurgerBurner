//
//  SettingsViewController.swift
//  BurgerBurner
//
//  Created by  on 2023-04-01.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    @IBOutlet weak var EditProfile: UILabel!
    @IBOutlet weak var MyGoals: UILabel!
    @IBOutlet weak var DeleteAccount: UILabel!
    @IBOutlet weak var ChangePassword: UILabel!
    @IBOutlet weak var LogOut: UILabel!
    @IBOutlet weak var Privacy: UILabel!
    @IBOutlet weak var AboutUs: UILabel!
    @IBOutlet weak var Help: UILabel!
    @IBAction func unwindToSettingsViewController(segue: UIStoryboardSegue) {
        //xxx
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Edit Profile gesture controller setup
        let gR1 = UITapGestureRecognizer(target: self, action: #selector(self.handleEditProfileTap))
        EditProfile.addGestureRecognizer(gR1)
        EditProfile.isUserInteractionEnabled = true
        
        // My Goals gesture controller setup
        let gR2 = UITapGestureRecognizer(target: self, action: #selector(self.handleMyGoalsTap))
        MyGoals.addGestureRecognizer(gR2)
        MyGoals.isUserInteractionEnabled = true
        
        // Privacy gesture controller setup
        let gR3 = UITapGestureRecognizer(target: self, action: #selector(self.handlePrivacyTap))
        Privacy.addGestureRecognizer(gR3)
        Privacy.isUserInteractionEnabled = true
        
        // About Us gesture controller setup
        let gR4 = UITapGestureRecognizer(target: self, action: #selector(self.handleAboutUsTap))
        AboutUs.addGestureRecognizer(gR4)
        AboutUs.isUserInteractionEnabled = true
        
        // About Us gesture controller setup
        let gR5 = UITapGestureRecognizer(target: self, action: #selector(self.handleHelpTap))
        Help.addGestureRecognizer(gR5)
        Help.isUserInteractionEnabled = true
        
        // Log Out gesture controller setup
        let gR6 = UITapGestureRecognizer(target: self, action: #selector(self.handleLogOutTap))
        LogOut.addGestureRecognizer(gR6)
        LogOut.isUserInteractionEnabled = true

        // Change Password gesture controller setup
        let gR7 = UITapGestureRecognizer(target: self, action: #selector(self.handleResetPasswordTap))
        ChangePassword.addGestureRecognizer(gR7)
        ChangePassword.isUserInteractionEnabled = true
    }
    
    // Edit Profile Btn method
    @objc func handleEditProfileTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "EditProfile") as! EditProfileViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    // My Goals Btn method
    @objc func handleMyGoalsTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "MyGoals") as! MyGoalsViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    // Privacy Btn method
    @objc func handlePrivacyTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "Privacy") as! PrivacyViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    // Privacy Btn method
    @objc func handleAboutUsTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "AboutUs") as! AboutUsViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    // Help Btn method
    @objc func handleHelpTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "Help") as! HelpViewController
        self.present(nvc, animated: true, completion: nil)
    }
    
    // Log Out Btn method
    @objc func handleLogOutTap(sender : UIGestureRecognizer) {
        AuthService.shared.signOut { [weak self] error in
            guard let self = self else { return }
            
            let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nvc = sb.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(nvc, animated: true, completion: nil)
                }
        }
    
    // Change/reset password Btn method
    @objc func handleResetPasswordTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "Help") as! HelpViewController
        self.present(nvc, animated: true, completion: nil)
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
