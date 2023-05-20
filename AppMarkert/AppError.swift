//
//  AppError.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

enum AppError: Error{
    case EmtyBasketError, NoUserEoor
}

extension AppError: CustomStringConvertible{
    public var description: String{
        switch self{
        case .EmtyBasketError:
            return "You heave no item in your basket"
        case .NoUserEoor:
            return "Plese login to plce an order"
        }
    }
}
