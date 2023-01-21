//
//  NetworkService.swift
//  MVC
//
//  Created by Samith on 2023-01-10.
//

import Foundation

class NetworkService {
    static let shared = NetworkService() // singelton?
    private init(){
        // initializer - in here we are using initializer because they are guranteed to be called
    }
    
    private var user: User?
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void){
        // completion handler to simulate that it has been logged in
        
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "samith@samith.me" && password == "password" {
                    self.user = User(firstName: "Samith", lastName: "Wijesinghe", email: "samith@samith.me", age: 28)
                    completion(true)
                } else{
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
    
    // simulating a get request
    func getLoggedInUser() -> User {
        return user!
    }
}
