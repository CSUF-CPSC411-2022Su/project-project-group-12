//
//  Filter.swift
//  Group Project 12
//
//  Created by Eduardo Romero on 6/8/22.
//

import Foundation

class Filter {
    var foodType: String
    var distance: Int
    
    init(_ foodType: String, _ distance: Int) {
        self.foodType = foodType
        self.distance = distance
    }
    
    init() {
        foodType = ""
        distance = 0
    }
    
//    func isIncluded(_ foodType: String) -> Bool {
//        // Checks if food type being searched is valid
//    }
    
//    func distanceRange(_ distance: Int) {
//        // returns list of restaurants within the given distance range
//        
//    }
}
