//
//  RestaruantView.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/20/22.
//

import SwiftUI

//View that will display the name of all current restaurants saved
struct RestaruantsView: View {
    @Binding var savedRestaurants: [String] //Shows current saved restaurants
    var body: some View {
        VStack{
            ForEach(savedRestaurants, id: \.self){ restaurant in
                Text(restaurant)
            }
        }
    }
}

