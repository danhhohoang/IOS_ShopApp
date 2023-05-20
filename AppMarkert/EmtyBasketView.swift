//
//  EmtyBasketView.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI

struct EmtyBasketView: View {
    
    private let message: String
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        //Horizoll
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
                //verticall
            VStack{
                Image(systemName: "list.bullet.clipboard")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .red, .green)
                    .font(.system(size: 120))
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmtyBasketView_Previews: PreviewProvider {
    static var previews: some View {
        EmtyBasketView(message: "Hello empty basket")
    }
}
