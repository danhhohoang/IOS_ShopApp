//
//  Mobile.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation
enum Category: String, Codable, Hashable{
    case mobile, laptop, tablet
}
struct Mobile: Codable, Identifiable{
    let id: String
    let name: String
    let description: String
    let ImageLink: String
    let price: Double
    let category: Category
    
    var imageUrl: URL? {
        URL(string: ImageLink)
    }
}
