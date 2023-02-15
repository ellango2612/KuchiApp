//
//  LogoImageswift.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/14/23.
//

import SwiftUI

// refactoring
struct LogoImageswift: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .foregroundColor(.red)
    }
}
