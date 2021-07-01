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
                        NavigationLink(
                            destination: CategoriesDetailsView(),
                            label: {
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
                            })
                    }.frame(width: 68)
                }
            }
        }
    }
}

struct CategoriesDetailsView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<5, id: \.self) { categories in
                VStack(alignment: .leading ,spacing: 8.0){
                        Image("Jinalys")
                            .resizable()
                            .scaledToFill()
                        Text("Demo")
                            .font(.system(size: 12, weight: .semibold))
                            .padding()
                    }.asTile()
                .padding()
            }.navigationBarTitle("Categories", displayMode: .inline)
            
        }
    }
}


struct DiscoveryCategoriesPreview: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoriesDetailsView()
        }
        DiscoveryView()
    }
}
