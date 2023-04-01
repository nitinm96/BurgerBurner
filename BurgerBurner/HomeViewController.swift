//
//  HomeViewController.swift
//  BurgerBurner
//
//  Created by  on 2023-03-30.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var settingsBtn: UIImageView!
    @IBAction func unwindToHomeViewController(segue: UIStoryboardSegue) {
        //xxx
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let gR = UITapGestureRecognizer(target: self, action: #selector(self.handleSettingsTap))
        settingsBtn.addGestureRecognizer(gR)
        settingsBtn.isUserInteractionEnabled = true
    }
    
    @objc func handleSettingsTap(sender : UIGestureRecognizer) {
        let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nvc = sb.instantiateViewController(withIdentifier: "Settings") as! SettingsViewController
        self.present(nvc, animated: true, completion: nil)
        print("tapped")
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
