//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
         VStack {
             
             Text("FOOOOOD")
                 .font(.title)
                 .fontWeight(.bold)
                 .foregroundColor(Color.red)
                 .lineLimit(nil)
                 .padding(.top)
            
             Text("Welcome")
                 .foregroundColor(Color.red) // This was added
                 .padding()
             HStack(alignment: .center) {
                 Image("test")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top)
                 .frame(width: 80.0, height: 100.0)
                 Image("burger")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding([.top, .trailing])
                 .frame(width: 100.0, height: 110.0)
                 Image("dessert")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top)
                     .frame(width: 60.0, height: 100.0)
             }
             HStack(alignment: .center){
                 Image("drink")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding([.top, .trailing])
                     .frame(width: 75.0, height: 100.0)
                 Image("fries")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top)
                     .frame(width: 60.0, height: 100.0)
                 
                 Image("salad")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top, 0.0)
                     .frame(width: 65.0, height: 90.0)
                     
             }
             Button("Google Map") {
                 /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
             }
            
         }
       
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.pink
            .colorInvert())
     }
   

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
            
    }
}
