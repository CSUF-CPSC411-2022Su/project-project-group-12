//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var foodType: String = ""
    @State var distance: String = ""
    var body: some View {
        
        VStack {
        
            VStack {
                Text("FOOOOOOD")
                HStack {
                    Spacer()
                    Text("Search: ")
                    TextField("Choose food type", text: $foodType)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Distance: ")
                    TextField("Distance radius (miles)", text: $distance)
                    Spacer()
                }
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        print("*List of Mexican restaurants*")
                    }) {
                        Text("Mexican")
                    }.padding()
                    Spacer()


                    Button(action: {
                        print("*List of Chinese restaurants*")
                    }) {
                        Text("Chinese")
                    }.padding()
                    Spacer()


                    Button(action: {
                        print("*List of Indian restaurants*")
                    }) {
                        Text("Indian")
                    }.padding()
                    Spacer()
                    
                }
            }
            Spacer()
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        print("*List of Beverage places*")
                    }) {
                        Text("Drinks")
                    }.padding()
                    Spacer()


                    Button(action: {
                        print("*List of Snack places*")
                    }) {
                        Text("Snacks")
                    }.padding()
                    Spacer()


                    Button(action: {
                        print("*List of Dessert places*")
                    }) {
                        Text("Dessert")
                    }.padding()
                    Spacer()
                }
            }

            
            VStack {
                Text(foodType)
                Text(distance)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
