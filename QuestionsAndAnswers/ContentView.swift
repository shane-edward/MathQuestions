//
//  ContentView.swift
//  QuestionsAndAnswers
//
//  Created by Shane Blackburn on 5/17/20.
//  Copyright © 2020 Shane Blackburn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Math is your friend")
                Spacer()
                Text("What is 2 + 2")
                Spacer()
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        ForEach(0 ..< 2) { number in
                            Button(action: {
                                // flag was tapped
                            }) {
                                Text("4")
                                    .frame(width: 100, height: 100)
                                    .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    HStack(spacing: 20) {
                        ForEach(0 ..< 2) { number in
                            Button(action: {
                                // flag was tapped
                            }) {
                                Text("4")
                                    .frame(width: 100, height: 100)
                                    .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
