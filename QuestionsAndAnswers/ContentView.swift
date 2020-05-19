//
//  ContentView.swift
//  QuestionsAndAnswers
//
//  Created by Shane Blackburn on 5/17/20.
//  Copyright © 2020 Shane Blackburn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var gameQuestions = questions.shuffled()

    @State private var resultShowing = false
    @State private var resultMessage = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Math is your friend")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Text(gameQuestions[0].question)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        ForEach(0 ..< 2) { number in
                            Button(action: {
                                self.answerTapped(number)
                            }) {
                                if number == 0 {
                                    Text(self.gameQuestions[0].answerOne)
                                        .frame(width: 100, height: 100)
                                        .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                        .foregroundColor(.black)
                                } else {
                                    Text(self.gameQuestions[0].answerTwo)
                                        .frame(width: 100, height: 100)
                                        .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
                    HStack(spacing: 20) {
                        ForEach(0 ..< 2) { number in
                            Button(action: {
                                self.answerTapped(number + 3)
                            }) {
                                if number + 3 == 3 {
                                    Text(self.gameQuestions[0].answerThree)
                                        .frame(width: 100, height: 100)
                                        .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                        .foregroundColor(.black)
                                } else {
                                    Text(self.gameQuestions[0].answerThree)
                                        .frame(width: 100, height: 100)
                                        .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                        .foregroundColor(.black)
                                }
                            }
                        }
                    }
//
                }
                Spacer()
            }
        }
        .alert(isPresented: $resultShowing) {
            Alert(title: Text(resultMessage), message: Text("Continue to the next question"), dismissButton: .default(Text("Continue")) {
                self.askQuestion()
            })
        }
    }
    
    func answerTapped(_ number: Int) {
        if number == gameQuestions[0].correctAnswerIndex {
            resultMessage = "Correct!"
        } else {
            resultMessage = "Incorrect, try again!"
        }
        
        resultShowing = true
    }
    
    func askQuestion() {
        gameQuestions.shuffle()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
