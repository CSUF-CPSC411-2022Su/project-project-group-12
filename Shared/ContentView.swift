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
                 .foregroundColor(Color.red)
                 .multilineTextAlignment(.center)
                 .padding()
             Text("I'm pleased to meet you") // This was added
                 .padding()
         }
     }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
