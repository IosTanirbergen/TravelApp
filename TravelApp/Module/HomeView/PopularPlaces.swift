//
//  PopularPlaces.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI

struct PopularPlaces: View {
    let venueItem: [SubCategoriesItem] = [
        .init(categoriesTitle: "Swimming", image: "CaspianSea", rating: "4.9", venue: "CaspianSea", price: "1500 T", county: "KZ", city: "Aktau - Ozen"),
        .init(categoriesTitle: "FastFood", image: "Bahandi", rating: "4.7", venue: "Bahandi", price: "1800 T", county: "KZ", city: "Almaty - Astana"),
        .init(categoriesTitle: "Mountains", image: "Mountain", rating: "5.0", venue: "Alatau", price: "2000 T", county: "KZ", city: "Almaty")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular places")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
             .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8.0) {
                    ForEach.init(venueItem, id: \.self) { placesItems in
                        HStack(spacing: 8) {
                            Image(placesItems.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(4)
                                .background(Color(.init(white: 0.9, alpha: 1)))
                                .clipped()
                                .background(Color.gray)
                                .padding(.leading, 6)
                                .padding(.vertical, 6)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                HStack {
                                    Text(placesItems.categoriesTitle)
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                    })
                                }
                                
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("\(placesItems.rating) \(placesItems.venue) - \(placesItems.price)")
                                }
                                
                                Text("\(placesItems.county) \(placesItems.city)")
                                    .font(.system(size: 12, weight: .semibold))
                            }.font(.system(size: 12, weight: .semibold))
                            
                            Spacer()
                        }
                            .frame(width: 280, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(6)
                            .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2)
                            .cornerRadius(7)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularPlacesPreview: PreviewProvider {
    static var previews: some View {
        PopularPlaces()
        DiscoveryView()
    }
}
