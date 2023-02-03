//
//  HomeViewController.swift
//  MVVM
//
//  Created by Samith on 2023-01-28.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() { 
        super.viewDidLoad()
        
        viewModel.getLoggedInUser()

    }
    
    private func setUpBinders() {
        viewModel.welcomeMessage.bind { [weak self] message in
            self?.welcomeLabel.text = message
        }
    }
}
