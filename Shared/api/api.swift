//
//  api.swift
//  Group Project 12
//
//  Created by Juan Ramirez on 6/13/22.
//
import SwiftUI

struct yelpAPIResult: Codable {
    var businesses: [Restaurants]
}

struct Restaurants: Codable, Identifiable {
    var id: String
    var name: String
}

class RestaurantFinder: ObservableObject{
    @Published var restaurants: [String] = [""]
    
    func findRestaurants (withFilters filters: String, distanceFrom radius: String) -> Void{
        let url = URL(string: "https://api.yelp.com/v3/businesses/search?location=FullertonCA&term=food&categories=\(filters)&radius=\(radius)")!
        var request = URLRequest(url: url)
        request.setValue("Bearer s3W10OfMopLLjvWmYlSc8tKRe96G9-NV_FwGeLlJMFCgbRaG1WziH73BLGvvKmNjJYA4SfPZr0Y1SyslMxfN087hNIljk9DyOuS4RO6iSVSO33k9QVYKGqvQoZyzYnYx", forHTTPHeaderField: "Authorization")
        request.setValue("applciation/json", forHTTPHeaderField: "Accept")
        let task = URLSession.shared.dataTask(with: request) {
            (data, _, _) in
            if let data = data {
                DispatchQueue.main.async {
                let jsonDecoder = JSONDecoder()
                    if let result = try? jsonDecoder.decode(yelpAPIResult.self, from: data){
                        result.businesses.forEach {
                            business in self.restaurants.append(business.name)
                        }
                    } else {
                        print("Failed to decode data")
                    }
                }
            } else {
                print("No data was found")
            }
        }
        task.resume()
    }
}
