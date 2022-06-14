//
//  Filter.swift
//  Group Project 12
//
//  Created by Eduardo Romero on 6/8/22.
//

import Foundation

class Filter {
    var filterType: String
    var distance: Int
    
    init(_ filterType: String, _ distance: Int) {
        self.filterType = filterType
        self.distance = distance
    }
    
    init() {
        filterType = ""
        distance = 0
    }
    
//    func isIncluded(_ filterType: String) -> Bool {
//        // Checks if filter name being searched is valid
//    }
    
    func distanceRange(_ distance: String) {
        // returns list of restaurants within the given distance range
    }
}
