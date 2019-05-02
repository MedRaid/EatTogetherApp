//
//  LoginController.swift
//  EatTogether
//
//  Created by Raddaoui Mohamed Raid on 5/2/19.
//  Copyright © 2019 tn.esprit.TestTech. All rights reserved.
//

import Foundation

class LoginController {
    // singleton
    static let shared = LoginController()
    
    // MARK: - Properties
    private let service = LoginService()
    
    // MARK: - Public
    func login(request: User?, completion: @escaping (_ user: User?, _ error: Error?) -> Void) {
        
                service.login(request: request, completion: {
                user, error in
                if user != nil {
                   // UserManager.setUser(user)
                }
                completion(user, error)
            })
            
        
    }
}

