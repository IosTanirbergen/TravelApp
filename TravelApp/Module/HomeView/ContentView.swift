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
                TrandingCreators()
            }.navigationTitle("Yolo")
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
                    ForEach.init(0..<5, id: \.self) { destinationItems in
                        VStack(alignment: .leading) {
                            Image("Almaty")
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(5)
                                .frame(width: 110, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                                Spacer()
                            }
                            
                            Spacer()
                            
                            Text("Almaty")
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 8)
                            
                            Text("City")
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
                HStack(spacing: 6) {
                    ForEach.init(0..<5, id: \.self) { placesItems in
                        Spacer()
                            .frame(width: 180, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .cornerRadius(6)
                            .shadow(radius: 3)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct TrandingCreators: View {
    var body: some View {
        VStack {
            HStack {
                Text("Traiding ceators")
                    .font(.system(size: 15, weight: .semibold))
                Spacer()
                Text("See All")
                    .font(.system(size: 15, weight: .semibold))
            }.padding(.horizontal)
             .padding(.top)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 6) {
                    ForEach.init(0..<15, id: \.self) { tradingItems in
                        Spacer()
                            .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(radius: 3)
                    }
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


