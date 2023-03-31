//
//  TicTacToeView.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//

import SwiftUI

struct TicTacToeView: View {
    let value: String
    
    var body: some View {
        Text(value)
            .font(.system(size: 80))
            .foregroundColor(.white)
            .frame(width: 100, height: 100)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct TicTactoeView_Previews: PreviewProvider {
    static var previews: some View {
        TicTacToeView(value: "X")
    }
}
