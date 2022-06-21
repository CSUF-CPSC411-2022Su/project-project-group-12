//
//  FilterView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct FilterView: View {
    @State var foodType: String = ""
    @State var distance: String = ""
    var body: some View {
        
        NavigationView {
                VStack {
                    VStack {
                        HStack {
                            Text("FOOOOOOD")
                            .bold()
                            .font(.largeTitle)
                            
                        }
                        HStack {
                            Spacer()
                            Text("Search: ")
                                .bold()
                            TextField("food type or restaurant name", text: $foodType)
                                .modifier(TextEntry())
                                Spacer()
                        }.padding(2)
                        HStack {
                            Spacer()
                            Text("Distance: ")
                                .bold()
                            TextField("radius (miles)", text: $distance)
                                .modifier(TextEntry())
                                Spacer()
                        }
                        HStack {
                            Button(action: {
                                // switch statement to check distance and link to restaurant api 
                                print("Searching for \(foodType) food within \(distance) miles")
                                
                            }) {
                                Text("Find Restaurants")
                                    .modifier(ButtonDesign())
                            }
                        }.padding()
                    }
        
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: Text("* Card displays of Mexican restaurants *")) {
                                Text("Mexican")
                                .modifier(ButtonDesign())
                        }.padding()
                            Spacer()

                        NavigationLink(destination: Text("* Card displays of Chinese restaurants *")) {
                                Text("Chinese")
                                .modifier(ButtonDesign())
                        }.padding()
                        Spacer()

                        NavigationLink(destination: Text("* Card displays of American restaurants *")) {
                                Text("American")
                                .modifier(ButtonDesign())
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                    
                
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: Text("* Card displays of Beverage restaurants *")) {
                                Text("Drinks")
                                .modifier(ButtonDesign())
                        }.padding()
                        Spacer()

                        NavigationLink(destination: Text("* Card displays of Snacks restaurants *")) {
                                Text("Snacks")
                                .modifier(ButtonDesign())
                        }.padding()
                        Spacer()

                        NavigationLink(destination: Text("* Card Displays of Dessert restaurants *")) {
                                Text("Desserts")
                                .modifier(ButtonDesign())
                        }.padding()
                        Spacer()
                    }
                    Spacer()
                    
                    HStack {
                        NavigationLink(destination: OtherFoodSuggestionsLink()) {
                            Text("Other food suggestions")
                                .modifier(ButtonDesign())
                        }
                    }

                }
                Spacer()
        }
            
    }
}


struct OtherFoodSuggestionsLink: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Other Food Suggestions")) {
                        NavigationLink(destination: Text("Card Displays of Indian restaurants")) {
                            Text("Indian")
                        }
                        NavigationLink(destination: Text("Card Displays of Italian restaurants")) {
                            Text("Italian")
                        }
                        NavigationLink(destination: Text("Card Displays of Thai restaurants")) {
                            Text("Thai")
                        }
                        NavigationLink(destination: Text("Card Displays of Japanese restaurants")) {
                            Text("Japanese")
                        }
                        NavigationLink(destination: Text("Card Displays of Mediterranean restaurants")) {
                            Text("Mediterranean")
                        }
                    }
                }
            }
        }
    }
}


struct TextEntry: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(6)
            .background(Color(.systemGray5))
            .cornerRadius(6)
            .padding(.horizontal)
    }
}


struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(10)
    }
}




struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
