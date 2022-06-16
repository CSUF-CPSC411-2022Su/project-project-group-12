//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    private var restaurants: [String] = ["McDonalds", "Chik-Fil-A", "Arbys", "Albertos", "Chipotle"].reversed()
    
    var body: some View {
        VStack {
            ZStack
            {
                ForEach(restaurants, id: \.self) { restaurant in
                    CardView(restaurant: restaurant)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
