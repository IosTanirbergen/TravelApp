//
//  DiscoveryCategoriesView.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI

struct DiscoveryCategories: View {
    let categories: [CategoriesItem] =  [
        .init(name: "Art", imageName: "chart.bar.doc.horizontal"),
        .init(name: "Sport Fitness", imageName: "sportscourt"),
        .init(name: "Cinema", imageName: "film"),
        .init(name: "Travel", imageName: "figure.walk"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                HStack(alignment: .top, spacing: 16) {
                    ForEach.init(categories, id: \.self) { categoriesItems in
                        VStack(spacing: 4) {
                            Image(systemName: categoriesItems.imageName)
                                .foregroundColor(Color(#colorLiteral(red: 0.3202754259, green: 0.3971690536, blue: 0.7395551801, alpha: 1)))
                                .frame(width: 68, height: 68, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.white)
                                .cornerRadius(34)
                                .shadow(radius: 4)
                            Text(categoriesItems.name)
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(.white)
                        }.padding(.leading) .padding(.top)
                    }.frame(width: 68)
                }
            }
        }
    }
}


struct DiscoveryCategoriesPreview: PreviewProvider {
    static var previews: some View {
        DiscoveryCategories()
        DiscoveryView()
    }
}
