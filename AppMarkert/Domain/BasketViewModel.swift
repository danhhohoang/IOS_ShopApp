//
//  BasketViewModel.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

final class BasketViewModel: ObservableObject {
    private let firebaseRepository = FirebaseRepository()
    @Published private(set) var items: [Mobile] = []
    @Published var basketError: AppError?
    @Published var showError = false
    
    
    func add(mobile: Mobile){
        items.append(mobile)
        print("We have \(items.count) mobile in our basket")
    }
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
    var totalPrice: Double{
        items.reduce(0) {$0 + $1.price}
    }
    
    func createOder(for user: User?){
        guard !items.isEmpty else {
            basketError = .EmtyBasketError
            showError = true
            return
            
        }
        guard let user = user else {
            basketError = .NoUserEoor
            showError = true
            return
            
        }
        let order = Order(id: UUID().uuidString,
                          customerName: user.name,
                          customerAddress: user.address,
                          customerMobile: user.mobile,
                          item: items,
                          orderTotal: totalPrice)
        
        firebaseRepository.placeOrder(order: order)
        items = []
    }
}
