//
//  WelcomeView.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/9/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                .resizable()
                .scaledToFit()
                .opacity(0.08) // ask sima abt json
            HStack {
                WelcomeMessageView()
            }
            .labelStyle(HorizontallyAlignedLabelStyle())
            
        }
    }
}
