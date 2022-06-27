//
//  api.swift
//  Group Project 12
//
//  Created by Juan Ramirez on 6/13/22.
//

import Foundation
protocol Place {
    var restaurantName:String {get set}
    var restaurantAddress:String {get set}
    var restaurantID:Int {get set}
    var restaurantPhoto: String {get set }
}

class placesOverview: Place{
    var restaurantName:String
    var restaurantAddress:String
    var restaurantID:Int
    var restaurantPhoto: String
    
    init(){
        restaurantName = " "
        restaurantAddress = " "
        restaurantID = 0
        restaurantPhoto = " "
    }
    
    init(name:String, address:String){
        self.restaurantName = name
        self.restaurantAddress = address
        restaurantID = 0
        restaurantPhoto = " "
    }
    
    
}
