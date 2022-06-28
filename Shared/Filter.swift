//
//  Filter.swift
//  Group Project 12
//
//  Created by Eduardo Romero on 6/8/22.
//

import Foundation

class Filter : ObservableObject {
    var foodType: String
    var distance: String
    
    init(_ foodType: String, _ distance: String) {
        self.foodType = foodType
        self.distance = distance
    }
    
    init() {
        foodType = ""
        distance = "1000"
        }
    }
