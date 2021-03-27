//
//  HorizontalProgressView.swift
//  Wallet
//
//  Created by Egor Korchagin on 27.03.2021.
//

import SwiftUI

struct HorizontalProgressView: View {
    @Binding var persentage: Int
    var body: some View {
        GeometryReader { proxy in
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.primaryYellow)
                .frame( height: 20)
            RoundedRectangle(cornerRadius: 5)
                .fill(Color.primaryPurple)
                .frame(
                    width: proxy.size.width * CGFloat(persentage)/100,
                    height: 20)
        }
        }
    }
}

struct HorizontalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalProgressView(persentage: .constant(50))
    }
}
