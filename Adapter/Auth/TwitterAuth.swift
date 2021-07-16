//
//  TwitterAuth.swift
//  Adapter
//
//  Created by Александр Уткин on 16.07.2021.
//

import Foundation

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuth {
    public func login(
        email: String,
        passwordL: String,
        completion: @escaping (TwitterUser?, Error?) -> Void) {
        let token = "token"
        let user = TwitterUser(email: email, password: passwordL, token: token)
        completion(user, nil)
    }
}
