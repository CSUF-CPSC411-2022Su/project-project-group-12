//
//  googlemap.swift
//  Group Project 12
//
//  Created by 葛聿泠 on 6/12/22.
//

import SwiftUI

struct googlemap: View {
    @State var input = ""
    
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
                       Text("Go")
                   })
               }


           }



       }
}


struct googlemap_Previews: PreviewProvider {
    static var previews: some View {
        googlemap()
    }
}
