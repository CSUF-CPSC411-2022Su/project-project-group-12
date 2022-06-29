//
//  ButtonViewModifier.swift
//  Group Project 12 (iOS)
//
//  Created by csuftitan on 6/29/22.
//

import Foundation
import SwiftUI

//Modifier for the buttons within the Filter View
struct FilterButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(10)
    }
}

struct FilterTextEntry: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(6)
            .background(Color(.systemGray5))
            .cornerRadius(6)
            .padding(.horizontal)
    }
}
