//
//  GitInformationView.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI

struct GitInformation: View {
    
    let git: [GitsItem] = [
        .init(gitName: "Aynur", gitImage: "first"),
        .init(gitName: "Asem Batyrkyzy", gitImage: "second"),
        .init(gitName: "Sabina Bayzakova", gitImage: "third")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Tour Guids")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
             .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10.0) {
                    ForEach.init(git, id: \.self) { gitItems in
                            VStack(spacing: 8){
                                Image(gitItems.gitImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .cornerRadius(32)
                                    .clipped()
                                Text(gitItems.gitName)
                                    .font(.system(size: 13, weight: .regular))
                                    .multilineTextAlignment(.center)
                            }
                    }
                    .frame(width: 65)
                    .shadow(radius: 5)
                    .padding(.bottom)
                }.padding(.horizontal)
            }
        }
    }
}

struct GitInformationPreview: PreviewProvider {
    static var previews: some View {
        GitInformation()
        DiscoveryView()
    }
}
