//
//  HomeViewModel.swift
//  MVVM
//
//  Created by Samith on 2023-02-04.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: observableObject<String?> = observableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
}
