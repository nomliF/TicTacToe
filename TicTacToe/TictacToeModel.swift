//
//  TictacToeModel.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//

import Foundation

class TicTacToeModel: ObservableObject {
    @Published var board = Array(repeating: "", count: 9) //array represents the game board with 9 empty strings
    @Published var currentPlayer = "X" //current player, initially set to X
    @Published var isOver = false

    var isDraw: Bool {
        !board.contains("") //game is a draw if there are no empty box lefts
    }
    
    var winner: String?{
        checkWinner()
    }
    
    func makeMove(at index: Int) {
        if board[index].isEmpty {
            board[index] = currentPlayer //Places the current player's on the board
            currentPlayer = currentPlayer == "X" ? "O" : "X"
            isOver = isDraw || winner != nil 
        }
    }
    
    func reset() {
        board = Array(repeating: "", count: 9)
        currentPlayer = "X"
        isOver = false
    }
    
    private func checkWinner() -> String? { //Private method to check for winning pattern
        let winningPatterns = [ //Array of winning patterns            
            [0, 1, 2], [3, 4, 5], [6, 7, 8], 
            [0, 3, 6], [1, 4, 7], [2, 5, 8], 
            [0, 4, 8], [2, 4, 6]
        ]
        
        for pattern in winningPatterns { //Loop through the winning patterns
            let values = [board[pattern[0]], board[pattern[1]], board[pattern[2]]] //Get the values at the current pattern positions
            if !values.contains("") && Set(values).count == 1 { //Check if the pattern has the same non-empty values
                return values[0] //Return the winning value
            }
        }
        
        return nil 
    }
}
