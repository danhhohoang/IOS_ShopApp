//
//  BasketView.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var basket: BasketViewModel
    @EnvironmentObject var userRepository: UserRepository
    
    @ViewBuilder
    private func placeOderButton() -> some View{
        Button{
            basket.createOder(for: userRepository.user)
        }label: {
            Text("\(basket.totalPrice, format: .currency(code: "VND")) - place Oder")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List {
                        ForEach(basket.items) { mobile in
                            MobileRow(mobile, didClickRow: {})
                        }
                        .onDelete(perform: basket.deleteItems)
                    }
                    .listStyle(.grouped)
                    .safeAreaInset(edge: .bottom){
                        placeOderButton()
                    }
                }
                if basket.items.isEmpty {
                    EmtyBasketView(message: "you have no item in your basket. \n Please add some!")
                }
            }
            .navigationTitle("🛒 Basket")
            .alert(isPresented: $basket.showError) {
                Alert(title: Text("Error"),
                      message: Text(basket.basketError?.description ?? ""),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
