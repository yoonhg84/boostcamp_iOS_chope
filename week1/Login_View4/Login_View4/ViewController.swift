//
//  ViewController.swift
//  Login_View4
//
//  Created by User on 2017. 7. 3..
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

    @IBAction func input_id(_ id: UITextField) {
    
        idValue.text = id.text
    
    }
    
    @IBAction func input_pwd(_ pwd: UITextField) {
        pwdValue.text = pwd.text
    }
    
    @IBAction func signinPressed(_ sender: UIButton) {
        print("touch up inside - sign in")
        print("ID : \(idValue.text!) , PW: \(pwdValue.text!)")
    }
    @IBAction func signupPressed(_ sender: UIButton) {
        print("touch up inside - sign up")
    }
    
    
    
}

