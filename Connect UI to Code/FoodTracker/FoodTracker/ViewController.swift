//
//  ViewController.swift
//  FoodTracker
//
//  Created by User on 2017. 6. 30..
//  Copyright © 2017년 Ji-Yong Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    //MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Action
    @IBAction func setDefaultLableText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
    
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the Keyboard
        
        textField.resignFirstResponder()
        //텍스트필드의 first-responder 상태를 종료하고 코드가 수행하는 작업을 설명하는 주석을 추가.
        
        return true
    }
    //입력된 정보를 읽고 그 텍스트로 작업을 수행할 수 있다. 라벨변경.
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    
    
    

}

