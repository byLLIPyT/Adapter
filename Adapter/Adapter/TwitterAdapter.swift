//
//  TwitterAdapetr.swift
//  Adapter
//
//  Created by Александр Уткин on 16.07.2021.
//

import Foundation

class TwitterAuthAdapter: AuthService {
    
    var auth = TwitterAuth()
    
    public func login(email: String,
               password: String,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void) {
        auth.login(email: email, passwordL: password) { (currentUser, error) in
            
            guard let currentUser = currentUser else {
                failure(error)
                return }
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            
            success(user, token)
            
        }
    }
    
    
}
