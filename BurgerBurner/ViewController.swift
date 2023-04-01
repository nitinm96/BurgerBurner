//
//  ViewController.swift
//  BurgerBurner
//
//  Created by Nitin Minhas on 2023-03-27.
//

import UIKit
import Foundation
import FirebaseFirestore
import FirebaseAuth

class ViewController: UIViewController {

    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Bitches");
        // Do any additional setup after loading the view.
                
        // Add a new document in collection "cities" *********Write test for DB******* Working
//        db.collection("cities").document("TO").setData([
//            "name": "Toronto",
//            "state": "ON",
//            "country": "CANADA"
//        ]) { err in
//            if let err = err {
//                print("Error writing document: \(err)")
//            } else {
//                print("Document successfully written!")
//            }
//        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.checkAuth()
    }
    

    public func checkAuth() {
        if Auth.auth().currentUser == nil {
            // go to sign in screen
            let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nvc = sb.instantiateViewController(withIdentifier: "SignIn") as! LoginViewController
            self.present(nvc, animated: true, completion: nil)
            print("1")
        } else {
            // go to home screen
            let sb : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let nvc = sb.instantiateViewController(withIdentifier: "HomeView") as! HomeViewController
            self.present(nvc, animated: true, completion: nil)
            print("2")
        }
    }
}

