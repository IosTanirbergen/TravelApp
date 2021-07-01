//
//  UIView.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI
import Foundation

extension View {
    func asTile() -> some View {
        modifier(ShadowModifier())
    }
}
