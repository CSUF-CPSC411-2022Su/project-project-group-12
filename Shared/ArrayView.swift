//
//  ArrayView.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/27/22.
//

import SwiftUI

struct ArrayView: View {
    var restaurants: [Restaurants]
    var body: some View {
        VStack {
            ZStack {
                ForEach(restaurants, id: \.self.name) { restaurant in
                    CardView(restaurant: restaurant)
                }
            }
        }
    }
}
