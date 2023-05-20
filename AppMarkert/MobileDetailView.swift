//
//  MobileDetailView.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI

struct MobileDetailView: View {
    @EnvironmentObject var basket: BasketViewModel
    
    let mobile: Mobile
    @Binding var isShowing: Bool
    @ViewBuilder
    private func dismisButton() -> some View{
        Button{
            //quay lại màn hình trước
            isShowing = false
        } label: {
            Image(systemName: "xmark.circle.fill")
                .scaleEffect(1.5)
                .padding()
                .foregroundColor(.gray)
        }
    }
    
    @ViewBuilder
    private func addTobasketButton() -> some View{
        Button{
            //Thêm Vào Giỏ hàng
            basket.add(mobile: mobile)
            isShowing = false
        } label: {
            Text(" \(mobile.price, format: .currency(code: "VND"))   Add to cart")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
    var body: some View {
        VStack(spacing: 10){
            RemoteImageView(url: mobile.imageUrl)
                .frame(width: 300, height: 225)
                .aspectRatio(contentMode: .fit)
            VStack{
                Text(mobile.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(mobile.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            Spacer()
            addTobasketButton()
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing){
           dismisButton()
        }
    }
}

struct MobileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MobileDetailView(mobile: Dumydata.Moblies[0], isShowing: .constant(true))
    }
}
