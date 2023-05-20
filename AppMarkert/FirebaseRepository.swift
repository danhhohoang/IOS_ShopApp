//
//  FirebaseRepository.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

final class FirebaseRepository {
    
    //DOC DU LIEU TU FIREBASE XUONG 
    func fetchMobile() async throws -> [Mobile]{
        try await withCheckedThrowingContinuation { continuation in
            FirebaseReference(.Mobiles).getDocuments{querySnapshot, error in
                    if let error = error{
                        continuation.resume(throwing: error)
                        return
                }
                guard let documents = querySnapshot?.documents else {
                    continuation.resume(returning: [])
                    return
                }
                let result = documents.compactMap{ queryDocumentSnapshot -> Mobile? in
                    return try? queryDocumentSnapshot.data(as: Mobile.self)
                }
                continuation.resume(returning: result)
            }
        }
    }
//kET NOI FIREBASE DUA LIEU LEN FIREBASE
    //Used to upload menu
//    func saveMobiles(){
//        for mobile in Dumydata.Moblies{
//            do{
//                try FirebaseReference(FCollectionReference.Mobiles).document(mobile.id).setData(from: mobile.self)
//            }catch{
//                print("Eror saving mobile to Firebase")
//            }
//        }
//    }
//Lưu đơn đặt hàng vào firebase
    func placeOrder(order: Order){
        do {
            try FirebaseReference(FCollectionReference.Orders).document(order.id).setData(from: order.self)
        }catch{
            print("Eror Saving order to FB", error.localizedDescription)
        }
        
//        print("Place an order for: \(order.customerName) ")
//        for item in order.item {
//            print(item.name)
//        }
    }
}
