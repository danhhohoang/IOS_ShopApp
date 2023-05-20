//
//  MobileRow.swift
//  AppMarkert
//
//  Created by Hoang Danh on 19/05/2023.
//

import SwiftUI

struct MobileRow: View {
    
    private let mobile: Mobile
    var didClickRow: () -> Void
    
    init(_ mobile: Mobile, didClickRow: @escaping () -> Void) {
        self.mobile = mobile
        self.didClickRow = didClickRow
    }
    var body: some View {
        Button {
            didClickRow()
        }label: {
            HStack{
                //Image
                RemoteImageView(url: mobile.imageUrl)
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                    .clipped()
                VStack(alignment: .leading, spacing: 5)
                {
                    Text(mobile.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("\(mobile.price, format: .currency(code: "VND"))")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                .padding(.leading)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .tint(.black)
    }
}

struct MobileRow_Previews: PreviewProvider {
    static var previews: some View {
        MobileRow(Dumydata.Moblies[0]){
            
        }
    }
}
