//
//  googlemap.swift
//  Group Project 12
//
//  Created by 葛聿泠 on 6/12/22.
//

import SwiftUI

struct googlemap: View {
    @SceneStorage("searchString") var input  = ""
    //@State var input = ""
    @SceneStorage("address") var address  = ""
    //@State var address = ""
    @SceneStorage("name") var name  = ""
    //@State var name = ""
    @State var searchString:String = ""
    @StateObject var finder = FoodFinder()
    var body: some View {
           Text("Search Bar")
               .font(.largeTitle)
               .fontWeight(.medium)
               .foregroundColor(Color.blue)
           Form{
               Section {
                   TextField("what you want to search",text:$input)
               }
               VStack {
                   Button(action:{
                   }, label: {
                       Text("Find Food")
                   })
               }
               Spacer()
               HStack{
                   Text("Search Result:")
               }
               
               VStack{
                   HStack{
                       Text("Name:")
                       TextField("name",text:$name)
                   }
                   HStack{
                       Text("Address:")
                       TextField("address",text:$address)
                   }
                   Spacer()
//                   VStack{
//                       Image("food1")
//                           .resizable()
//                           .scaledToFit()
//                           .frame(width: 300)
//                   }
                   Spacer()
                   VStack{
                       Text("Search History")
                           .font(.largeTitle)
                           .fontWeight(.medium)
                           .foregroundColor(Color.blue)
                       NavigationLink(destination: searchHistory()) {
                           
                       }
                   }
                   
                   
               }


           }



       }
}
struct searchHistory: View{
    @SceneStorage("address") var address  = ""
    @SceneStorage("searchString") var input  = ""
    var body: some View{
        NavigationView{
            GeometryReader{ geometry in
            VStack{
                Text("Seaarch History")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                    .padding()
                    
                Spacer()
                HStack{
                    Text("Address:")
                    TextField("address",text:$input)
                    
                }
                VStack{
                    Image("food1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .padding()
                }.frame(height:geometry.size.height / 2)
            }
            }
        }
    }
}

struct googlemap_Previews: PreviewProvider {
    static var previews: some View {
        googlemap()
    }
}

