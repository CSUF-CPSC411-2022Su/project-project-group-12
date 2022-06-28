//
//  ContentView.swift
//  Shared
//
//  Created by 葛聿泠 on 6/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var searchString:String = ""
    @StateObject var finder = FoodFinder()
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

                 Image("whole")
                     .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                     .padding(.top, 0.0)
                     .frame(width: 250.0, height: 220.0)
             }

             Spacer()
             
                 Button(action:{
                             print("touch")
                     
                         }){
                             NavigationLink(destination:foodmap()){
                             Text("Food Map")
                                 .fontWeight(.bold)
                                 .font(.title)
                                 .modifier(MyModifier()
                                     
                             )
                             
                         }

             
                
             }
             HStack{
             Button(action:{
                         print("touch")
                 
                     }){
                         NavigationLink(destination:FilterView()){
                         Text("Filter")
                                 .fontWeight(.bold)
                                 .font(.title)
                                 .modifier(MyModifier()
                         )
                         
                     }

         
            
         }
                 Button(action:{
                             print("touch")
                     
                         }){
                             NavigationLink(destination:ArrayView()){
                             Text("swipe")
                                     .fontWeight(.bold)
                                     .font(.title)
                                     .modifier(MyModifier()
                             )
                             
                         }

             
                
             }
             }
             
             
             }
                 
             }
             
       
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.pink
            .colorInvert())
     }
   

}

struct MyModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.white)
            .cornerRadius(30)
            .foregroundColor(.green)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.white, lineWidth: 4)
 )   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
            
    }
}


