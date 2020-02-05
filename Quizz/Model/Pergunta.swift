//
//  Pergunta.swift
//  Quizz
//
//  Created by Catia Miranda de Souza on 05/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import Foundation

struct Pergunta {
    let text: String
    let answer: String
    
    init(q: String,a: String) {
        text = q
        answer = a
    }
}
