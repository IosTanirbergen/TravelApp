//
//  PopularDestinationView.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 01.07.2021.
//

import SwiftUI

struct PopularDestination: View {
    
    let destinations: [Destination] = [
        .init(imageName: "Almaty", countryName: "Qazaqstan", cityName: "Almaty"),
        .init(imageName: "Aktau", countryName: "Qazaqstan", cityName: "Aktau"),
        .init(imageName: "Astana", countryName: "Qazaqstan", cityName: "Astana")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
             .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach.init(destinations, id: \.self) { destinationItems in
                        VStack(alignment: .leading) {
                            Image(destinationItems.imageName)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(5)
                                .frame(width: 110, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                                Spacer()
                            }
                            
                            Spacer()
                            
                            Text(destinationItems.countryName)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 8)
                                .foregroundColor(.white)
                            
                            Text(destinationItems.cityName)
                                .font(.system(size: 10, weight: .semibold))
                                .padding(.horizontal, 8)
                                .padding(.bottom, 8)
                                .foregroundColor(Color.white)
                        }
                            .frame(width: 125, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.popularDestinationColor))
                            .cornerRadius(6)
                            .modifier(ShadowModifier())
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularDestinationPreview: PreviewProvider {
    static var previews: some View {
        PopularDestination()
        DiscoveryView()
    }
}
