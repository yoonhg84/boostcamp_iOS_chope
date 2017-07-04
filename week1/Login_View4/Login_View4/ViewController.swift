//
//  ViewController.swift
//  Login_View4
//
//  Created by User on 2017. 7. 3..
//  Copyright © 2017년 Ji-Yong Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    //MARK: id pwd 텍스트필드.
    @IBOutlet weak var idValue: UITextField!
    @IBOutlet weak var pwdValue: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        idValue.delegate = self
        pwdValue.delegate = self
        
    }
    
   //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print(" ID : \(idValue.text!) , PW: \(pwdValue.text!)")
    
        //TextField id와 pwd 입력 후. Enter 누르면 키보드 사라짐.
        
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
    //MARK: 함수 - Sign in 버튼
    @IBAction func signinPressed(_ sender: UIButton) {
       
        print("touch up inside - sign in")
        print("ID : \(idValue.text!) , PW: \(pwdValue.text!)")
        
    }
    
    //MARK: 함수 - Sign up 버튼
    @IBAction func signupPressed(_ sender: UIButton) {
        print("touch up inside - sign up")
    }
    
    //MARK: 뷰를 클릭했을 때 키보드 숨기기.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

