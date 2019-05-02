//
//  LoginVModel.swift
//  EatTogether
//
//  Created by Raddaoui Mohamed Raid on 5/2/19.
//  Copyright © 2019 tn.esprit.TestTech. All rights reserved.
//


import UIKit

protocol PLoginVModel: NSObjectProtocol {
    func userLogin(sender: LoginVModel, user: User?, error: Error?)
}

class LoginVModel {
    weak var delegate: PLoginVModel?
    
    // MARK: - Properties
    var userreq: User?
    var user: User?
    
    func loginUser(request: User?) {
        
        LoginController.shared.login(request: request, completion: {
            user, error in
            self.userreq = request
            self.delegate?.userLogin(sender: self, user: user, error: error)
        })
    }

}

