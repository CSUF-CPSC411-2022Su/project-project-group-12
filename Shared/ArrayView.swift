//
//  ArrayView.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/27/22.
//

import SwiftUI

struct ArrayView: View {
   @State private var restaurants: [String] = ["McDonalds", "ChikFilA", "Lazy Dog", "Burger King", "Wendys"].reversed()
    
    var body: some View {
        VStack {
            ZStack {
                ForEach(restaurants, id: \.self) { restaurant in
                    CardView(restaurant: restaurant)
                }
            }
        }
    }
}
