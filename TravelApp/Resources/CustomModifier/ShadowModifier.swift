//
//  CustomModifier.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
    }
}

