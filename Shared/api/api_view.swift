//
//  api_view.swift
//  Group Project 12
//
//  Created by csuftitan on 6/13/22.
//

import Foundation
import SwiftUI

struct addressView: View {
    var testRestaurant = placesOverview(name: "Test", address: "Some place")

    var body: some View {
        VStack{
            Text("Name: \(testRestaurant.restaurantName)")
            Text("Address: \(testRestaurant.restaurantAddress)")
        }
    }
}

struct addressViewPreview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
