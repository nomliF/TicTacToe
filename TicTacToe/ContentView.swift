//
//  ContentView.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var game = TicTacToeModel()
    @State private var isGameOver = false
    @State private var isWelcomePresented = true
    
    var body: some View {
        if isWelcomePresented {
            WelcomeView(isPresented: $isWelcomePresented)
        } else {
            VStack {
                Text("Tic Tac Toe")
                    .font(.title)
                    .padding()
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 3), spacing: 15) {
                    ForEach(game.board.indices) { i in
                        TicTacToeView(value: game.board[i])
                            .onTapGesture {
                                game.makeMove(at: i)
                            }
                    }
                }
                .padding()
                
                HStack {
                    Button(action: {
                        game.reset()
                    }) {
                        Text("Reset Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    Button(action: {
                        isGameOver = true
                    }) {
                        Text("Quit Game")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                
                if let winner = game.winner {
                    Text("\(winner) Wins!")
                        .font(.title)
                        .padding()
                } else if game.isDraw {
                    Text("Draw")
                        .font(.title)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
