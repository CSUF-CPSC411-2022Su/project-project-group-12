//
//  CardView.swift
//  Group Project 12
//
//  Created by Parker Stephenson on 6/15/22.
//

import SwiftUI

struct CardView: View {
    var restaurant: String
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 320, height: 420)
                .border(.white, width: 7.0)
                .cornerRadius(4)
            HStack{
                Text(restaurant)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                TabView {
                            RestaruantView()
                                .tabItem {
                                    Image(systemName: "info")
                                    Text("Restaurants Saved")
                                }
                        }.environmentObject(restaurant)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(restaurant: "McDonalds")
            CardView(restaurant: "McDonalds")
        }
    }
}
