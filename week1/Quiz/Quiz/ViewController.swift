//
//  ViewController.swift
//  Quiz
//
//  Created by User on 2017. 6. 30..
//  Copyright © 2017년 Ji-Yong Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = ["From what  is cognac made?", "What is 7+7?","What is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes","14","Montpelier"]
    
    var currentQuestionIndex: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.s
    }

    @IBAction func showNextQuestion(sender: AnyObject){
        
        
       /* if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }*/
        currentQuestionIndex  = currentQuestionIndex + 1  == questions.count ? 0 : currentQuestionIndex + 1
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

}

