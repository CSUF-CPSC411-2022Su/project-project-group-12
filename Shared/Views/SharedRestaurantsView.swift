//
//  SharedRestaurantsView.swift
//  Group Project 12
//
//  Created by csuftitan on 6/29/22.
//

import Foundation
import SwiftUI

//View that will display the name of all current restaurants saved
struct SharedRestaruantsView: View {
    @EnvironmentObject var sharedRestaurants: SharedRestaurants //Shows current saved restaurants
    var body: some View {
        VStack{
            ForEach(sharedRestaurants.sharedRestaurants, id: \.self){ sharedRestaurant in
                Text(sharedRestaurant)
            }
        }
    }
}


