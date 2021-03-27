//
//  BalanceView.swift
//  Wallet
//
//  Created by Egor Korchagin on 27.03.2021.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercentage = 0
    var headerView: some View {
        HStack {
            Text("Balance")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("$\(wallet.selectedCard.balance)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.primaryPurple)
                .padding(.trailing)
        }
    }
    var body: some View {
        VStack {
            headerView
            HorizontalProgressView(persentage: $incomePercentage)
            Spacer()
        }.onChange(of: wallet.selectedCard, perform: { _ in
            update()
        })
    }
    private func update(){
            withAnimation(.spring(response: 2)) {
                incomePercentage = wallet.selectedCard.imcomePercentage
        }
    }
}


struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
    }
}
