//
//  FilterView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI


class SharedRestaurants: ObservableObject {
    @Published var sharedRestaurants: [String] = [""]
}

//View that allows us to filter the restaurant within our request
struct FilterView: View {
    @SceneStorage("foodType") var foodType: String = ""
    @SceneStorage("distance") var distance: String = ""
    @StateObject var restaurantFinder = RestaurantFinder()
    @StateObject var sharedRestaurants = SharedRestaurants()
    
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
                            TextField("Food type or restaurant name", text: $foodType)
                                .modifier(FilterTextEntry())
                                Spacer()
                        }.padding(2)
                        HStack {
                            Spacer()
                            Text("Distance: ")
                                .bold()
                            TextField("Radius (meters)", text: $distance)
                                .modifier(FilterTextEntry())
                                Spacer()
                        }
                        HStack {
                            Button(action: {
                                restaurantFinder.findRestaurants(withFilters: foodType, distanceFrom: distance)
                                print(restaurantFinder.restaurants)
                            }) {
                                Text("Find Restaurants")
                                    .modifier(FilterButton())
                            }
                        }.padding()
                    }
        
                    Spacer()

                    HStack {
                        //This takes you to the Swiping Page
                        NavigationLink(destination: ArrayView(restaurants: restaurantFinder.restaurants, savedRestaurants: [""])) {
                            Text("Start Swiping")
                                .modifier(FilterButton())
                        }
                        //This takes you to the Home Page
                        NavigationLink(destination: HomeView(restaurants: restaurantFinder.restaurants)) {
                            Text("Home")
                                .modifier(FilterButton())
                        }
                    }
                    Spacer()
                    //This takes you to a suggestions page
                    HStack {
                        NavigationLink(destination: OtherFoodSuggestionsLink()) {
                            Text("Other food suggestions")
                                .modifier(FilterButton())
                        }
                    }
                }
                Spacer()
        } .environmentObject(sharedRestaurants)
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

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
