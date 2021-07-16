//
//  GoogleAuth.swift
//  Adapter
//
//  Created by Александр Уткин on 16.07.2021.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

public class GoogleAuth {
    public func login(
        email: String,
        passwordL: String,
        completion: @escaping (GoogleUser?, Error?) -> Void) {
        let token = "token"
        let user = GoogleUser(email: email, password: passwordL, token: token)
        completion(user, nil)
    }
}
