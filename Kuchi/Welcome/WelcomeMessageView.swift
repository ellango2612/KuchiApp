//
//  WelcomeMessageView.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/14/23.
//

import SwiftUI

// right-click -> refactor -> rename
struct WelcomeMessageView: View {
    var body: some View {
        HStack {
            Image(systemName: "table")
                .resizable()
                .frame(width: 30, height: 30)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .background(Color(white: 0.9))
                .clipShape(Circle())
                .foregroundColor(.red)
            VStack(alignment: .leading) {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(1)
            .padding(.horizontal) // between text and image horizontally
        }
    }
}
