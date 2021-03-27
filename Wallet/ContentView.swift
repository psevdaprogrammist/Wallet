//
//  ContentView.swift
//  Wallet
//
//  Created by Egor Korchagin on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 35) {
            HeaderView()
            CardListView()
            Spacer()
        }.padding(25)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}
