//
//  ViewController.swift
//  BurgerBurner
//
//  Created by Nitin Minhas on 2023-03-27.
//

import UIKit
import Foundation
import FirebaseFirestore

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


}

