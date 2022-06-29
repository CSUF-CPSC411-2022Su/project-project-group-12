//
//  ContentViewModifier.swift
//  Group Project 12 (iOS)
//
//  Created by csuftitan on 6/29/22.
//

import Foundation
import SwiftUI

// Modifire for the buttons within HomeView
struct HomeViewModifier: ViewModifier {
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
        )
    }
}
