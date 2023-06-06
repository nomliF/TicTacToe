//
//  WelcomeView.swift
//  TicTacToe
//
//  Created by Filmon Mehari Gebrezghi on 2023-03-27.
//


//https://www.youtube.com/watch?v=3ZSclLOL0QA

import SwiftUI

struct WelcomeView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack{
            Color.skyGradient
                .ignoresSafeArea()//Ignore the safe area to make the gradient full screen

            VStack {
                Text("Welcome to Tic Tac Toe!")
                    .font(.title)
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Button(action: {
                    isPresented = false //dismissing the welcome view
                }) {
                    Text("Start Game")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }.cornerRadius(10)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(isPresented: .constant(false))
    }
}

