//
//  Questions.swift
//  QuestionsAndAnswers
//
//  Created by Shane Blackburn on 5/17/20.
//  Copyright © 2020 Shane Blackburn. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var answerOne: String
    var answerTwo: String
    var answerThree: String
    var answerFour: String
    var correctAnswerIndex: Int
}

var questions = [
    Question(question: "What is 4 + 4", answerOne: "8", answerTwo: "10", answerThree: "0", answerFour: "4", correctAnswerIndex: 0),
    Question(question: "What is the Square Root of 49", answerOne: "6", answerTwo: "2401", answerThree: "7", answerFour: "4.9", correctAnswerIndex: 2),
    Question(question: "What is 315 - 102", answerOne: "213", answerTwo: "417", answerThree: "217", answerFour: "413", correctAnswerIndex: 0),
    Question(question: "What is 99 / 3", answerOne: "3", answerTwo: "30", answerThree: "33", answerFour: "9", correctAnswerIndex: 2),
    Question(question: "What is 30 X 3", answerOne: "99", answerTwo: "90", answerThree: "33", answerFour: "9", correctAnswerIndex: 1)
]
