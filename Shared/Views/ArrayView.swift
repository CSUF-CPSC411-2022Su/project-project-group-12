//
//  ArrayView.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/27/22.
//

import SwiftUI

//View that stacks cards on the Z-Axis. This is a typical stack
struct ArrayView: View {
    var restaurants: [String] //The current list of restaurants from the API call
    @State var savedRestaurants: [String] // The current list of saved restaurants
    var body: some View {
        VStack {
            ZStack {
                ForEach(restaurants, id: \.self) { restaurant in
                    CardView(restaurant: restaurant,
                             savedRestaurants: $savedRestaurants)
                }
            }
        }
    }
}
