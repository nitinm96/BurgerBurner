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
    let mainDelegate = UIApplication.shared.delegate as! AppDelegate;
    
    var quotesText : String!;
    var quoteLengthLimit = 100;
    @IBOutlet var quotesLabel : UILabel!;

    
    func getQuotes() {
        
        Api().loadData() { (quotes: [BurgerBurner.Quote]) in
            for q in quotes
            {
                self.quotesText = q.quote;
            }
            
            //check if quote length is less than (quoteLengthLimit) characters
            if self.quotesText.count <= self.quoteLengthLimit
            {
                self.quotesLabel.text = self.quotesText;

            }else{
                self.getQuotes()
            }
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        getQuotes()
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

