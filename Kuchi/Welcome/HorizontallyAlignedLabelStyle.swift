//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by Ella Ngo on 2/11/23.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}
