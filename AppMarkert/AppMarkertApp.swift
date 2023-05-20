//
//  AppMarkertApp.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI
import FirebaseCore

@main
struct AppMarkertApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(BasketViewModel())
                .environmentObject(UserRepository())
        }
    }
}
