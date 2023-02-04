//
//  ViewController.swift
//  MVVM
//
//  Created by Samith on 2023-01-28.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // instance of the login view model
    private let viewmodel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBinders()
        
    }
    
    private func setupBinders() {
        viewmodel.error.bind { [weak self] error in
            if let error = error {
                print(error)
            } else {
                self?.goToHomePage()
            }
        }
    }

    private func goToHomePage() {
        let controller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        guard let email = emailField.text,
              let password = passwordField.text else {
            print("please enter an email and password")
            return
        }
        viewmodel.login(email: email, password: password)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

