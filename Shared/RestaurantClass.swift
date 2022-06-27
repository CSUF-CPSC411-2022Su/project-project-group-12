//
//  RestaurantClass.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/26/22.
//

import Foundation

class Restaruant: ObservableObject {
    @Published var restaurants: [String] = ["McDonalds", "Chik-Fil-A", "Arbys", "Albertos", "Chipotle"]
}
