//
//  LoginViewModel.swift
//  MVVM
//
//  Created by Samith on 2023-01-29.
//

import Foundation

final class LoginViewModel
{
    var error: observableObject<String?> = observableObject(nil)
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in
            self?.error.value = success ? nil : "Invalid credentials"
        }
    }
}
