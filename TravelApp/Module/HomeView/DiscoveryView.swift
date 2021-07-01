//
//  BlogView.swift
//  bcc_ios
//
//  Created by Zhanibek Santay on 6/21/21.
//

import SwiftUI

struct DiscoveryView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                Color.white
                    .offset(y: 500)
                ScrollView(.vertical) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Where to do you want go?")
                        Spacer()
                    }.foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular))
                    .padding()
                    .background(Color(.init(white: 1, alpha: 0.3)))
                    .cornerRadius(16)
                    .padding(16)
                    DiscoveryCategories()
                    VStack {
                        PopularDestination()
                        PopularPlaces()
                        GitInformation()
                    }
                    .background(Color.white)
                    .cornerRadius(16)
                    .padding(.top, 20)
                }
            }
            .navigationTitle("Qazaqstan")
        }
    }
}

struct MainPreview: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}


