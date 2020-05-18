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
    var answerThre: String
    var answerFour: String
    var correctAnswerIndex: Int
}

let questions = [
    Question(question: "What is 4 + 4", answerOne: "8", answerTwo: "10", answerThre: "0", answerFour: "4", correctAnswerIndex: 0),
]
