//
//  AccountViewModel.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import Foundation

final class AccountViewModel: ObservableObject{
    @Published var name = ""
    @Published var address = ""
    @Published var mobile = ""
    
    func setupUI(user: User?){
        name = user?.name ?? ""
        address = user?.address ?? ""
        mobile = user?.mobile ?? ""
    }
    
    func isInvalidForm() -> Bool{
        name.isEmpty || address.isEmpty || mobile.isEmpty
    }
    
}
