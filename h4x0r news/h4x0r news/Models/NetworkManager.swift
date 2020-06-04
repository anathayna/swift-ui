//
//  NetworkManager.swift
//  h4x0r news
//
//  Created by Ana Thayna Franca on 04/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
    
}
