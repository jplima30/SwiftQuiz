//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by jplima on 03/01/21.
//  Copyright © 2021 jplima. All rights reserved.
//

import Foundation

class Quiz {
    let question: String
    let options: [String]
    let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func ValidateOption(_ index: Int) -> Bool {
    let answer = options[index]
    return answer == correctedAnswer
    
    }
    
    deinit {
        print("Liberou da memória")
    }
    
}
