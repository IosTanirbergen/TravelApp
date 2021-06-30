//
//  BlogView.swift
//  bcc_ios
//
//  Created by Zhanibek Santay on 6/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                DiscoveryCategories()
                PopularDestination()
                PopularRestourant()
                GitInformation()
            }.navigationTitle("Qazaqstan")
        }
    }
}

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
                                .foregroundColor(.white)
                                .frame(width: 68, height: 68, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.gray)
                                .cornerRadius(34)
                                .shadow(radius: 4)
                            Text(categoriesItems.name)
                                .font(.system(size: 14, weight: .regular))
                        }.padding(.leading) .padding(.top)
                    }.frame(width: 68)
                }
            }
        }
    }
}

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
                            
                            Text(destinationItems.cityName)
                                .font(.system(size: 10, weight: .semibold))
                                .padding(.horizontal, 8)
                                .padding(.bottom, 8)
                                .foregroundColor(Color.blue)
                        }
                           // .frame(width: 125, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(6)
                            .shadow(radius: 3)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct PopularRestourant: View {
    
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
                            .shadow(radius: 3)
                            .cornerRadius(7)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct GitInformation: View {
    
    let git: [GitsItem] = [
        .init(gitName: "Aynur", gitImage: "first"),
        .init(gitName: "Asem Batyrkyzy", gitImage: "second"),
        .init(gitName: "Sabina Bayzakova", gitImage: "third")
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Top gits")
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

struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


