//
//  ViewController.swift
//  Login_View3
//
//  Created by User on 2017. 7. 1..
//  Copyright © 2017년 Ji-Yong Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idValue: UITextField!
    
    @IBOutlet weak var pwdValue: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    @IBAction func inputID(_ txtField: UITextField) {
        idValue.text = txtField.text    }
    
    
    @IBAction func inputPwd(_ txtField: UITextField) {
        pwdValue.text = txtField.text
    }
    
    
    
    
    @IBAction func sign_in_Pressed(_ txtField: UIButton) {
        print("touch up inside - sign in")
        print("ID : \(idValue.text!) , PW: \(pwdValue.text!)")
    }

    @IBAction func sign_up_Pressed(_ sender: UIButton) {
        print("touch up inside - sign up")
    }
    
}

