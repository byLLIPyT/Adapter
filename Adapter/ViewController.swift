//
//  ViewController.swift
//  Adapter
//
//  Created by Александр Уткин on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var authService: AuthService = GoogleAuthAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createUser(email: "alex-tt", password: "123")
    }

    func createUser(email: String, password: String) {
        authService.login(email: email, password: password) { (user, token) in
            print("Auth success: \(user.email), \(user.password)")
        } failure: { (error) in
            if let error = error {
                print(error)
            }
        }

    }
    

}

