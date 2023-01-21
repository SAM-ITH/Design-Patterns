//
//  LoginViewController.swift
//  MVC
//
//  Created by Samith Wijesinghe on 2022-12-28.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var WelComeLbl: UILabel!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

        user = NetworkService.shared.getLoggedInUser()
        welcomeUser()
    }
    
    private func welcomeUser(){
        WelComeLbl.text = "Hi, \(user.firstName) \(user.lastName)"
    }
}
