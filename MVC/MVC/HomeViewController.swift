//
//  ViewController.swift
//  MVC
//
//  Created by Samith Wijesinghe on 2022-12-26.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(self.validateFields), for: .editingChanged)
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton){
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!) { sucess in
            if sucess {
                self.goToHomePage()
            }else{
                print("invalid credentials")
            }
        }
    }
    
    private func goToHomePage(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        present(controller, animated: true, completion: nil)
    }
    
    @objc private func validateFields() {
        loginBTN.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

