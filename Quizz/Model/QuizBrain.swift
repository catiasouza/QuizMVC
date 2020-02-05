//
//  QuizBrain.swift
//  Quizz
//
//  Created by Catia Miranda de Souza on 05/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Pergunta (q: "O sangue de uma lesma é verde.", a: "True"),
        Pergunta (q: "Aproximadamente um quarto dos ossos humanos estão nos pés.", a: "True"),
        Pergunta (q: "A área total da superfície de dois pulmões humanos é de aproximadamente 70 metros quadrados.", a: "True"),
        Pergunta (q: "Na Virgínia Ocidental, EUA, se você acidentalmente bater em um animal com seu carro, poderá levá-lo para casa para comer.", a: "True"),
        Pergunta (q: "Em Londres, Reino Unido, se você morrer na Câmara do Parlamento, você está tecnicamente autorizado a um funeral estadual, porque o edifício é considerado um local muito sagrado.", a: "False"),
        Pergunta (q: "É ilegal fazer xixi no oceano em Portugal.", a: "True"),
        Pergunta (q: "Você pode conduzir uma vaca pelas escadas, mas não pelas escadas.", a: "False"),
        Pergunta (q: "O Google foi originalmente chamado de 'Backrub'.", a: "True"),
        Pergunta (q: "O nome de solteira da mãe de Buzz Aldrin era 'Moon'.", a: "True"),
        Pergunta (q: "O som mais alto produzido por qualquer animal é de 188 decibéis. Esse animal é o elefante africano.", a: "False"),
        Pergunta (q: "Nenhum pedaço de papel quadrado seco pode ser dobrado ao meio mais de 7 vezes.", a: "False"),
        Pergunta (q: "O chocolate afeta o coração e o sistema nervoso de um cachorro; algumas onças são suficientes para matar um cachorro pequeno.", a: "True")
        
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:  String) -> Bool{
        
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            
            return false
        }
    }
    
    func getQuestionText() ->String {
        
        return quiz[questionNumber].text
    }
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            //Imutavel?
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    func getScore() -> Int {
        return score
    }
}
