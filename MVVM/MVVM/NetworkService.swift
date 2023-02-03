//
//  NetworkService.swift
//  MVVM
//
//  Created by Samith on 2023-02-01.
//

import Foundation

// this class simulate the backend funtionality
final class NetworkService {
    static let shared = NetworkService() // singelton
    
    var user: User?
    
    private init() { }
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            [weak self] in
            if email == "test@test.com" && password == "password"
            {
                self?.user = User(firstName: "Samith", lastName: "wijesinghe", email: "test@test.com", age: 21)
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        } 
    }
}
