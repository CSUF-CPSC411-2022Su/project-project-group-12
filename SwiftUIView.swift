//
//  SwiftUIView.swift
//  Group Project 12 (iOS)
//
//  Created by 葛聿泠 on 6/12/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Image("test")
            .frame(width: 50.0, height: 50.0)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .environment(\.sizeCategory, .small)
    }
}
