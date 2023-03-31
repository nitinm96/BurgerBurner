//
//  Quotes.swift
//  BurgerBurner
//
//  Created by Nitin Minhas on 2023-03-31.
//

import Foundation
import UIKit

class Quote : Decodable {
    
    var quote : String?;
    var author : String?;
    var category : String?;
}

class Api : ObservableObject{

    func loadData(completion:@escaping ([Quote]) -> ()) {
        
        //randomly select category
        let categories = ["inspirational", "health", "fitness"]
        let randomCategory = categories.randomElement() ?? "fitness";
        print("Quote Category: \(randomCategory)")
        
        //call api to get quote
        let query = randomCategory.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: "https://api.api-ninjas.com/v1/quotes?category=" + query!)!
        var request = URLRequest(url: url)
        request.setValue("EEQmYqWs3KUhBP6tGFjbsw==9hEQ00nnaJ7mJzNd", forHTTPHeaderField: "X-Api-Key")
        URLSession.shared.dataTask(with: request) { data, response, error in
            let quotes = try! JSONDecoder().decode([Quote].self, from: data!)
                DispatchQueue.main.async {
                    completion(quotes)
                }
            }.resume()
    }
}

