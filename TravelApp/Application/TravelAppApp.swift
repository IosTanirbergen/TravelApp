//
//  TravelAppApp.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 13.06.2021.
//

import SwiftUI
import Firebase

@main
struct TravelAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            DiscoveryView()
        }
    }
}
