//
//  AuthService.swift
//  Adapter
//
//  Created by Александр Уткин on 16.07.2021.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthService {
    func login(email: String, password: String, success: @escaping(User, Token) -> Void, failure: @escaping (Error?) -> Void)
}
