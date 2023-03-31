//
//  TictacToeModel.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//

import Foundation

class TicTacToeModel: ObservableObject {
    @Published var board = Array(repeating: "", count: 9)
    @Published var currentPlayer = "X"
    @Published var isOver = false
    
    var isDraw: Bool {
        !board.contains("")
    }
    
    var winner: String? {
        checkWinner()
    }
    
    func makeMove(at index: Int) {
        if board[index].isEmpty {
            board[index] = currentPlayer
            currentPlayer = currentPlayer == "X" ? "O" : "X"
            isOver = isDraw || winner != nil
        }
    }
    
    func reset() {
        board = Array(repeating: "", count: 9)
        currentPlayer = "X"
        isOver = false
    }
    
    func quit() {
        exit(0)
    }
    
    private func checkWinner() -> String? {
        let winningPatterns = [            [0, 1, 2], [3, 4, 5], [6, 7, 8], // horizontal
            [0, 3, 6], [1, 4, 7], [2, 5, 8], // vertical
            [0, 4, 8], [2, 4, 6] // diagonal
        ]
        
        for pattern in winningPatterns {
            let values = [board[pattern[0]], board[pattern[1]], board[pattern[2]]]
            if !values.contains("") && Set(values).count == 1 {
                return values[0]
            }
        }
        
        return nil
    }
}
