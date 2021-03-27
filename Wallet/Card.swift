//
//  Card.swift
//  Wallet
//
//  Created by Egor Korchagin on 27.03.2021.
//

import SwiftUI

struct Card: Hashable {
    let income: Int
    let expences: Int
    var balance: Int {
        income - expences
    }
    let cardNumber: String
    let imageName: String
    var isSelected = false
    var backgroungColor: Color {
        isSelected ? Color.primaryPurple: Color.primaryYellow
    }
    var textColor: Color {
        isSelected ? .white: .black
    }
    var imcomePercentage: Int {
        Int(Double(balance) / Double(income) * 100)
    }
}
