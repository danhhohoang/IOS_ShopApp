//
//  HomeViewModel.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

final class HomeViewModel: ObservableObject{
    private let firebaseRepository = FirebaseRepository()
    @Published private(set) var mobiles: [Mobile] = []
    @Published private(set) var seclectedMobile: Mobile?
    
    @MainActor
    @Sendable func fetchMobile() async {
        do{
            mobiles = try await firebaseRepository.fetchMobile()
        }catch{
            print("Err fectMoble Mobile", error.localizedDescription)
        }
    }
//LUU VAO DATABASE
//    func saveMenu(){
//        firebaseRepository.saveMobiles()
//    }
    
    func selecMobile(mobile: Mobile){
        seclectedMobile = mobile
    }
}
