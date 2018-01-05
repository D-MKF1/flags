//
//  Question.swift
//  Flags
//
//  Created by Marc Kraus on 29.12.17.
//  Copyright © 2017 Marc Kraus. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let question: String
    let options: [String]
    
    init(image: String, questionText: String, choice: [String] = []){
        questionImage = image
        question = questionText
        options = choice
    }
}
