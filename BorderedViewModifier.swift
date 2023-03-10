//
//  BorderedViewModifier.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/14/23.
//

import SwiftUI

struct BorderedViewModifier: ViewModifier { // it conforms to protocol : view modifier
    func body(content: Content) -> some View {
        content
        .padding(EdgeInsets(
            top: 8, leading: 16, bottom: 8, trailing: 16))
        .background(Color.white)
        .overlay(
        RoundedRectangle(cornerRadius: 8)
            .stroke(lineWidth: 2)
            .foregroundColor(.blue)
        )
        .shadow(
            color: Color.gray.opacity(0.4),
            radius: 3, x: 1, y: 2)
    }
}

// create a method for bordered:
extension View {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderedViewModifier())
    }
}
