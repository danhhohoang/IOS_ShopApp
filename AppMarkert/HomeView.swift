//
//  HomeView.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowing = false
    
    var categories: [String:[Mobile]]{
        .init(
            grouping: viewModel.mobiles, by: {$0.category.rawValue}
        )
    }
    var body: some View {
        ZStack{
            
            NavigationStack{
                
                List(categories.keys.sorted(), id: \String.self){key in
                    Section {
                        if let mobiles = categories[key]{
                            ForEach(mobiles){ mobile in
                                MobileRow(mobile){
                                    viewModel.selecMobile(mobile: mobile)
                                    isShowing = true
                                }
                            }
                        }
                    }
                header: {
                    Text(key)
                        .font(.subheadline)
                    }
                }
                .navigationTitle("🐶 Home")
                .task(viewModel.fetchMobile)
                .blur(radius: isShowing ? 10 : 0)
                .disabled(isShowing)
//THUC HIEN DUA DU LIEU VAO DATABASE
//                .onAppear{
//                    viewModel.saveMenu()
//                }
            }
            if isShowing{
                if let mobile = viewModel.seclectedMobile
                {MobileDetailView(mobile: mobile, isShowing: $isShowing) 
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
