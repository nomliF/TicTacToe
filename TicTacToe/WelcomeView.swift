//
//  WelcomeView.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("Welcome to Tic Tac Toe!")
                .font(.title)
                .padding()
            
            Button(action: {
                isPresented = false
            }) {
                Text("Start Game")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(isPresented: .constant(false))
    }
}

