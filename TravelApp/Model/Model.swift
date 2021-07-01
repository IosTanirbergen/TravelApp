//
//  HomeData.swift
//  TravelApp
//
//  Created by Tanirbergen Kaldibai on 22.06.2021.
//

import Foundation

struct CategoriesItem: Hashable {
    let name, imageName: String
}


struct Destination: Hashable {
    let imageName, countryName, cityName: String
}

struct SubCategoriesItem: Hashable {
    let categoriesTitle, image, rating, venue, price, county, city: String
}

struct GitsItem: Hashable {
    let gitName, gitImage: String
}
