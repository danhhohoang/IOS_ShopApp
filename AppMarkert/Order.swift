//
//  Oder.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

struct Order: Codable {
    let id: String
    let customerName: String
    let customerAddress: String
    let customerMobile: String
    let item: [Mobile]
    let orderTotal: Double
}
