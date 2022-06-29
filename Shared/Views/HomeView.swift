//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

//The Home page of the app
struct HomeView: View {
    @State var searchString:String = ""
    var restaurants: [String]
    var body: some View {
        NavigationView{
         VStack {
             Text("FOOOOOD")
                 .font(.title)
                 .fontWeight(.bold)
                 .foregroundColor(Color.red)
                 .lineLimit(nil)
                 .padding(.top)
             Text("Welcome")
                 .foregroundColor(Color.red)
                 .padding()
             HStack(alignment: .center){
                 Image("whole")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top, 0.0)
                     .frame(width: 250.0, height: 220.0)
             }
             Spacer()
             
                //Links to the foodmap page
             Button(action:{
                print("touch")
              }
             ){
             NavigationLink(destination:foodmap()){
                Text("Food Map")
                    .fontWeight(.bold)
                    .font(.title)
                    .modifier(HomeViewModifier())
                }
             }
             HStack{
                 
                 //Links to the Filtering page
             Button(action:{
                print("touch")
             }){
             NavigationLink(destination:FilterView()){
             Text("Filter")
                .fontWeight(.bold)
                .font(.title)
                .modifier(HomeViewModifier())
             }
            }
                 //Links to the page where you swipe
            NavigationLink(destination: ArrayView(restaurants: restaurants, savedRestaurants: [""])){
                Text("Swipe!")
                    .fontWeight(.bold)
                    .font(.title)
                    .modifier(HomeViewModifier())
                }
             }
           }
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.pink
            .colorInvert())
     }
}
