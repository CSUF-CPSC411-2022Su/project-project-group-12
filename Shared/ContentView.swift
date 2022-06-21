//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct ContentView: View {
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
                 .foregroundColor(Color.red) // This was added
                 .padding()

             HStack(alignment: .center){
//                 Image("drink")
//                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
//                     .padding([.top, .trailing])
//                     .frame(width: 75.0, height: 100.0)
//                 Image("fries")
//                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
//                     .padding(.top)
//                     .frame(width: 60.0, height: 100.0)
//                 //Spacer()
//                 Image("salad")
//                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
//                     .padding(.top, 0.0)
//                     .frame(width: 65.0, height: 90.0)
                 Image("whole")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top, 0.0)
                     .frame(width: 250.0, height: 220.0)
             }
//             Button("Google Map") {
//
//             }
             Spacer()
             
                 Button(action:{
                             print("touch")
                     
                         }){
                             NavigationLink(destination:googlemap()){
                             Text("Food Map")
                                 .fontWeight(.bold)
                                 .font(.title)
                                 .padding()
                                 .background(Color.white)
                                 .cornerRadius(30)
                                 .foregroundColor(.green)
                                 .padding(10)
                                 .overlay(
                                     RoundedRectangle(cornerRadius: 40)
                                         .stroke(Color.white, lineWidth: 4)
                                     
                             )
                             
                         }

             
                
             }
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
