//
//  HeaderView.swift
//  Wallet
//
//  Created by Egor Korchagin on 27.03.2021.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Good morning")
                    .font(.callout)
                    .foregroundColor(Color(.systemGray3))
                Text("Psevdo Programmist")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("photo")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
