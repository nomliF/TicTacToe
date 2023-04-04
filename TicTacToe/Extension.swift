//
//  Extension.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-04-04.
//

import SwiftUI

extension Color {
    static let skyGradient = LinearGradient(
        gradient: Gradient(colors: [
            Color(red: 0.55, green: 0.75, blue: 0.91),
            Color(red: 0.87, green: 0.94, blue: 0.97),
            Color(red: 0.98, green: 0.84, blue: 0.64),
            Color(red: 0.97, green: 0.62, blue: 0.47),
            Color(red: 0.75, green: 0.36, blue: 0.27)
        ]),
        startPoint: .top,
        endPoint: .bottom
    )
}
