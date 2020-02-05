//
//  ViewController.swift
//  Quizz
//
//  Created by Catia Miranda de Souza on 04/02/20.
//  Copyright © 2020 Catia Miranda de Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questaoLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBotton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func ansewerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //true false
        let userGoItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGoItRight{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    @objc func updateUI(){
        questaoLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueBotton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
}

