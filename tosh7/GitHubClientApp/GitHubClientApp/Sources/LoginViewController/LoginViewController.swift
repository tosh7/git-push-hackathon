//
//  ViewController.swift
//  GitHubClientApp
//
//  Created by Satoshi Komatsu on 2018/10/09.
//  Copyright © 2018 Satoshi Komatsu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!{
        didSet {
            loginButton.isEnabled = false
        }
    }
    
    let url = "https://api.github.com"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LoginButtonPressed(_ sender: Any) {
        let userName = userNameTextField.text
        let passWord = passWordTextField.text
        
        if userName != "" && passWord != "" {
            //ここでログイン周りの処理を行う
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if userNameTextField.text != "" && passWordTextField.text != ""{
            loginButton.isEnabled = false
        }
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if userNameTextField.text != "" && passWordTextField.text != ""{
            loginButton.isEnabled = false
        }
        
        self.view.endEditing(true)
    }
}

